
/*封装X*/
window.X=HTMLElement.prototype.X=function(selector){
    var elems=(this==window?document:this)
        .querySelectorAll(selector);
    return elems.length==0?null:
           elems.length==1?elems[0]:
                           elems;
}
HTMLElement.prototype.on=function(ename,fun){
  this.addEventListener(ename,fun);
}
NodeList.prototype.each=function(callback){
  //遍历当前nodeList中每个元素，对每个元素调用相同的callback函数
  for(var i=0;i<this.length;i  ++){
    callback(this[i]);
  }
}

/*广告图片数组*/
var imgs=[
	{"i":0,"img":"images/1.jpg"},
    {"i":1,"img":"images/2.jpg"},
    {"i":2,"img":"images/3.jpg"},
    {"i":3,"img":"images/4.jpg"},
    {"i":4,"img":"images/5.jpg"},
];

var adv={
  LIWIDTH:0,//保存每个li的宽度
  DISTANCE:0,//保存总距离
  DURATION:1000,//保存总时间
  STEPS:200,//保存总步数
  interval:0,//保存步频
  step:0,//保存步长
  moved:0,//保存已经移动的位移
  timer:null,//保存定时器序号
  WAIT:4000,//自动轮播之间的等待时间
  canAuto:true,//标示是否可以启动自动轮播

  init:function(){
    //获得id为slider的div的宽,保存在LIWIDTH中
    this.LIWIDTH=parseFloat(

      //getComputedStyle(X("#slider")).width
        X("#slider").width
    );
    //计算interval: DURATION/STEPS
    this.interval=this.DURATION/this.STEPS;
    this.updateView();//更新页面
    //为id为indexs的ul绑定鼠标进入事件为function
    X("#indexs").on("mouseover",
      function(e){
        var target=e.target;//获得target
        //如果target是li
        if(target.nodeName=="LI"){
          //求n: target的内容-id为indexs下class为hover的元素的内容
          var n=target.innerHTML
                 -X("#indexs>.hover").innerHTML;
          this.move(n);//调用move(n)
        }
      }.bind(this)
    );
    //调用autoMove，启动自动轮播
    this.autoMove();
    //为id为slide绑定鼠标进入事件为:
    X("#slider").on("mouseover",function(){
      this.canAuto=false;//修改canAuto为false
    }.bind(this));
    //为id为slide绑定鼠标移出事件为:
    X("#slider").on("mouseout",function(){
      this.canAuto=true;//修改canAuto为true
    }.bind(this));
  },
  updateView:function(){//将数组内容更新到页面
    //遍历imgs中每个元素,同时声明空字符串htmlImgs,和htmlIdxs
    for(var i=0, htmlImgs="", htmlIdxs=""; i<imgs.length; i++){
      //向htmlImgs中拼接一个<li><img src="当前元素的img属性"></li>
      htmlImgs+=
        '<li><a href="#"><img src="'+imgs[i].img+'"></a></li>';
      //向htmlIdxs中拼接一个<li>i+1</li>
      htmlIdxs+="<li>"+(i+1)+"</li>";
    }
    //设置id为imgs的元素的内容为htmlImgs
    X("#imgs").innerHTML=htmlImgs;
    //设置id为imgs的元素的宽为LIWIDTH*imgs的元素个数
    X("#imgs").style.width=
      this.LIWIDTH*imgs.length+"px";
    //设置id为indexs的元素的内容为htmlIdxs
    X("#indexs").innerHTML=htmlIdxs;
    //找到id为indexs下所有li中和imgs数组第一个元素的i属性标示的位置相同的li，设置其class为hover
    X("#indexs>li")[imgs[0].i].className="hover";
  },
  autoMove:function(){//启动自动轮播
    //启动一次性定时器,任务:move,参数为1,等待时间为WAIT
    this.timer=setTimeout(
      function(){
        //如果可以启动自动轮播
        if(this.canAuto){
          this.move(1);//调用move方法，移动1次
        }else{//否则
          //调用autoMove，再次等待
          this.autoMove();
        }
      }.bind(this),this.WAIT  
    );
  },
  move:function(n){//启动一次移动
    //停止动画，清除timer-防止动画叠加
    clearInterval(this.timer);
    this.timer=null;
    if(n<0){//如果右移
      //删除imgs结尾的n个元素，拼接到imgs开头
      imgs=imgs.splice(imgs.length+n,-n)
               .concat(imgs);
      this.updateView();//更新页面
      //获得id为imgs的ul的left
      var left=parseFloat(
        getComputedStyle(X("#imgs")).left
      );
      //计算start:left-this.LIWIDTH*n;
      var start=left-this.LIWIDTH*(-n);
      //设置id为imgs的ul的left为left-LIWIDTH*n
      X("#imgs").style.left=start+"px";
      var end=0;
    }else{//如果左移
     //获得id为imgs的ul的left，保存在变量start中
      var start=parseFloat(
        getComputedStyle(X("#imgs")).left
      );
      //用-LIWIDTH*n，保存在变量end中
      var end=-this.LIWIDTH*n;
    }
    //求DISTANCE: -(end-start)
    this.DISTANCE=-(end-start);
    //求step:DISTANCE/STEPS
    this.step=this.DISTANCE/this.STEPS;
    //启动周期性定时器: moveStep，间隔interval，序号保存在timer中
    this.timer=setInterval(
      this.moveStep.bind(this,n),this.interval
    );
  },
  moveStep:function(n){//移动一步
    //获得id为imgs的ul的left
    var left=parseFloat(
      getComputedStyle(X("#imgs")).left
    );
    //设置id为imgs的ul的left为left-step
    X("#imgs").style.left=left-this.step+"px";
    this.moved++;//moved+1
    //如果moved==STEPS
    if(this.moved==this.STEPS){//移动结束
      //停止定时器，清除timer, moved归0
      clearInterval(this.timer);
      this.timer=null;
      this.moved=0;
      if(n>0){//如果左移
        //删除数组开头的n个元素，拼接到结尾
        imgs=imgs.concat(imgs.splice(0,n));
        this.updateView();//更新界面:  
      }
      //清除id为imgs的left
      X("#imgs").style.left="";
      //调用autoMove，启动自动轮播
      this.autoMove();
    }
  }
}
adv.init();

