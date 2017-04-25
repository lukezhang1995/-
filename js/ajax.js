/**
 * Created by Administrator on 2016/10/11.
 */
//异步加载页脚
$("#footer").load('footer.php');


/*最世界模块*/
//页面一加载异步获取最世界的数据
loadZuiPage(0);
//异步加载最世界的数据
function loadZuiPage(start){
    $.getJSON('data/qyzsj.php',{"start":start},function(output){
        var html ='';
        //console.log("开始加载内容");
        $.each(output,function(i,p){
            html += `<li>
				<div class="buytoday">
                    <div class="buytoday-head"><h2>${p.zinf}</h2></div>
                    <div class="buytoday-main">
                        <a href="#">
                            <div class="buytoday-photo">
                                <img src="${p.pic}"/>
                            </div>
                            <div class="cont_information">
                                <p class="font_itr">${p.picinf}</p>
                            </div>
                                <p class="qg"><b class="price">${p.price}</b>元起</p>
                                <a href="#" class="l_buy">立即购买</a>
                        </a>
                    </div>
                    <div class="buytoday-foot">
                        <p>${p.otherinf}</p>
                    </div>
				</div>
			</li>

        `;
            //console.log(html);
            $('#world_box ul:first-child').html(html);
        })

    })
}
//最世界
$('#world_box ul.scoll').on('mouseover','li',function(e){
    e.preventDefault();
    e.stopPropagation();
    if(this.nodeName=="LI"&&$(this).attr("class")!="active"){
        //console.log(this);
        //console.log(e.target);
        var start=this.dataset.start;
        //为数据添加动画效果 todo 出现问题？  CSS 398行
        $("#world_box ul:first-child").addClass("zui_col3_show");
        $(this).addClass('active').siblings('.active').removeClass('active');
        loadZuiPage(start);
    }

    //console.log(start);

});
$('#world_box ul.scoll').on('click','li',function(e){
    e.preventDefault();
    e.stopPropagation();
    if(this.nodeName=="LI"&&$(this).attr("class")!="active"){
        //console.log(this);
        //console.log(e.target);
        var start=this.dataset.start;
        //为数据添加动画效果 todo 出现问题？  CSS 398行
        $("#world_box ul:first-child").addClass("zui_col3_show");
        $(this).addClass('active').siblings('.active').removeClass('active');
        loadZuiPage(start);
    }

    //console.log(start);

});



/*热门游记*/
//页面一加载异步获取热门游记的数据
loadHotPage(0);
//热门游记
function loadHotPage(starth){
    $.getJSON('data/qyhot.php',{"starth":starth},function(output){
        var html ='';
        //console.log("开始加载内容");
        $.each(output,function(i,p){
            html += `
            <li>
				<div class="Items">
					<div><img class="scale" src="${p.pbg}"/></div>
					<div class="fangkuang"><img src="${p.pig}"/></div>
					<p class="p2">${p.pnm}</p>
					<p class="p1"><b>${p.pif}</b></p>
				</div>
			</li>
        `;
            $('#hot_tour ul:first-child').html(html);
        })

    })
}
//热门游记
$('#hot_tour ul.scoll').on('mouseover','li',function(e){
    e.preventDefault();
    e.stopPropagation();
    if(this.nodeName=="LI"&&$(this).attr("class")!="active"){
        var starth=this.dataset.starth;
        $("#hot_tour ul:first-child").addClass("hot_col3_show");
        $(this).addClass('active').siblings('.active').removeClass('active');
        loadHotPage(starth);
    }
});
$('#hot_tour ul.scoll').on('click','li',function(e){
    e.preventDefault();
    e.stopPropagation();
    if(this.nodeName=="LI"&&$(this).attr("class")!="active"){
        var starth=this.dataset.starth;
        $("#hot_tour ul:first-child").addClass("hot_col3_show");
        $(this).addClass('active').siblings('.active').removeClass('active');
        loadHotPage(starth);
    }
});

/*发现穷游*/
loadfindPage(0);

 function loadfindPage(startf){
    $.getJSON('data/qyfid.php',{"startf":startf},function(output){
        var html ='';
        //console.log("开始加载内容");
        $.each(output,function(i,p){
            html += `
                <li class="find_list">
				    <div class="fangkuang"><img src="${p.fic}"/></div>
					<div class="autor">
						<p><b><a href="#">${p.fnm}</a></b></p>
						<p class="fans">${p.fan}</p>
						<p class="level">${p.pni}</p>
					</div>
					<a class="like" href="#">+关注</a>
				</li>

            `;
            $('#find ul').html(html);
        })
    })
 }

$('#changef').click(function(e){
    e.preventDefault();
    e.stopPropagation();
    //todo   实行功能  点击按钮刷新数据     startf+=6; 每次加载6个
    //todo 逻辑startf每次加6 数据库一共36条数据  如果startf超过36，则从startf=0开始
    //todo 定义startf从0开始加载
    //console.log(this);
    if(this.dataset.startf<=30){
        $("#find ul").addClass("find_col2_show");
        var startf=this.dataset.startf;
        loadfindPage(startf);
        this.dataset.startf=parseInt(this.dataset.startf)+6;
    }else{
        this.dataset.startf=0;
        var startf=this.dataset.startf;
        loadfindPage(startf);
    }
});


/*猜你感兴趣*/
loadexictPage(0);

function loadexictPage(starte){
    $.getJSON('data/qyext.php',{"starte":starte},function(output){
        var html ='';
        $.each(output,function(i,p){
            html += `
               <li>
					<div class="Items">
					    <div><img src="${p.eic}"/>
					        <div class="bg">
					             <p class="p"></p>
					        </div>
					    </div>
						<p class="p1"><b>${p.ett}</b></p>
						<p class="p2"><b>${p.enm}</b><span><b>${p.eit}</b></span></p>
					</div>
			   </li>
            `;
            $('#exciting_point div.exciting_box ul').html(html);
        })
    })
}

$('#changee').click(function(e){
    e.preventDefault();
    e.stopPropagation();
    if(this.dataset.starte<=32){
       //console.log(this);
        $("#exciting_point div.exciting_box ul").addClass("excit_col4_show");
        var starte=this.dataset.starte;
        loadexictPage(starte);
        this.dataset.starte=parseInt(this.dataset.starte)+8;
    }else{
        this.dataset.starte=0;
        var starte=this.dataset.starte;
        loadexictPage(starte);
    }
});













