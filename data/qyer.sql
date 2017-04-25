SET NAMES UTF8;
DROP DATABASE IF EXISTS qyer;
CREATE DATABASE qyer CHARSET=UTF8;
USE qyer;

CREATE TABLE  qyzsj(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    zinf VARCHAR(64),
    pic VARCHAR(64),
    picinf VARCHAR(64),
    price INT,
    otherinf VARCHAR(64)
);

INSERT INTO qyzsj VALUES(
    NULL,'限时低价','images/z1.jpg','上海直飞香港4天3晚自由行','899','明日10点开抢：北京直飞贝加尔湖4-9天含税机票'
);
INSERT INTO qyzsj VALUES(
    NULL,'特价签证', 'images/z2.jpg','【上海领区】韩国个人签证','699','明日10点开抢：【全国受理】入台证'
);
INSERT INTO qyzsj VALUES(
    NULL,'城市玩乐', 'images/z3.jpg','香港海洋公园门票','255','明日10点开抢：新加坡环球影城主题公园电子票'
);
INSERT INTO qyzsj VALUES(
    NULL,'限时低价', 'images/z4.jpg','上海往返法国巴黎10天含税机票','2999','明日10点开抢：上海直飞东京含税机票'
);
INSERT INTO qyzsj VALUES(
    NULL,'特价签证', 'images/z5.jpg','【全国受理】美国个人旅游签证','1099','明日10点开抢：【北京领区】日本个人旅游签证'
);
INSERT INTO qyzsj VALUES(
    NULL,'城市玩乐', 'images/z6.jpg','美国拉斯维加斯太阳马戏团神秘秀','655','明日10点开抢：日本冲绳美之海水族馆门票'
);
INSERT INTO qyzsj VALUES(
    NULL,'限时低价', 'images/z7.jpg','【只省2000】上海直飞长滩5-6天含税机票','777','明日10点开抢：【APP立减100】上海直飞福冈/冲绳'
);
INSERT INTO qyzsj VALUES(
    NULL,'特价签证', 'images/z8.jpg','【北京领区】韩国个人旅游签证','199','明日10点开抢：【北京领区】新加坡个人旅游签证'
);
INSERT INTO qyzsj VALUES(
    NULL,'城市玩乐', 'images/z9.jpg','京都NI WALK——探秘祇园东山半日游','248','明日10点开抢：新加坡环球影城免排队快捷电子票'
);
INSERT INTO qyzsj VALUES(
    NULL,'限时低价', 'images/z2.jpg','香港海洋公园门票','255','明日10点开抢：新加坡环球影城主题公园电子票'
);
INSERT INTO qyzsj VALUES(
    NULL,'特价签证', 'images/z6.jpg','【上海领区】韩国个人签证','699','明日10点开抢：【全国受理】入台证'
);
INSERT INTO qyzsj VALUES(
    NULL,'城市玩乐', 'images/z1.jpg','美国拉斯维加斯太阳马戏团神秘秀','655','明日10点开抢：日本冲绳美之海水族馆门票'
);
INSERT INTO qyzsj VALUES(
    NULL,'限时低价','images/z4.jpg','上海直飞香港4天3晚自由行','899','明日10点开抢：北京直飞贝加尔湖4-9天含税机票'
);
INSERT INTO qyzsj VALUES(
    NULL,'特价签证', 'images/z6.jpg','【上海领区】韩国个人签证','699','明日10点开抢：【全国受理】入台证'
);
INSERT INTO qyzsj VALUES(
    NULL,'城市玩乐', 'images/z1.jpg','香港海洋公园门票','255','明日10点开抢：新加坡环球影城主题公园电子票'
);

CREATE TABLE  qyhot(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pnm VARCHAR(64),
    pig VARCHAR(64),
    pbg VARCHAR(64),
    pif VARCHAR(64)
);

INSERT INTO qyhot VALUES(
    NUll,'穷游大秘书','images/most/11.jpg','images/most/1.jpg','今日话题|你对那座城市有迷之好感'
);
INSERT INTO qyhot VALUES(
    NUll,'annie215','images/most/22.jpg','images/most/2.jpg','【CC葱@英国】如此心跳你的一切都要————4个小伙伴11天'
);
INSERT INTO qyhot VALUES(
    NUll,'purleeyes4444','images/most/33.jpg','images/most/3.jpg','在西班牙猛吃+减肥的日子-8月24日跟新完毕毕克尔多清真寺'
);
INSERT INTO qyhot VALUES(
    NUll,'skyeeee','images/most/44.jpg','images/most/4.jpg','夫妻白本DIY新西兰签证 两年多次无电调，详细材料清单'
);
INSERT INTO qyhot VALUES(
    NUll,'路刻社','images/most/55.jpg','images/most/5.jpg','免税VS退税，你想问的可能都在这里'
);
INSERT INTO qyhot VALUES(
    NUll,'小毓','images/most/66.jpg','images/most/6.jpg','英国签证碎碎念（8月最新送签经验 详细攻略 现场提示照片）'
);
INSERT INTO qyhot VALUES(
    NUll,'Phoebe-JIA','images/most/77.jpg','images/most/7.jpg','【PhobeJIA】跟团游美帝|美国（洛杉矶/拉斯维加斯/大峡谷）'
);
INSERT INTO qyhot VALUES(
    NUll,'Tuthmos','images/most/88.jpg','images/most/8.jpg','安拉大地——————新月诸国巡礼'
);
INSERT INTO qyhot VALUES(
    NUll,'穷游大秘书','images/most/99.jpg','images/most/9.jpg','今日话题|你偏爱那种游记 摄影大片生动形象还是干货攻略言简意'
);
INSERT INTO qyhot VALUES(
    NUll,'aero44000','images/most/1010.jpg','images/most/10.jpg','【对世界上瘾】波士顿到缅甸的自驾徒步微旅行（独家住宿）'
);
INSERT INTO qyhot VALUES(
    NUll,'Phonebe-JIA','images/most/1111.jpg','images/most/011.jpg','泡泡澳丽澳|澳大利亚（16天8k块墨尔本）'
);
INSERT INTO qyhot VALUES(
    NUll,'犀牛皮毛毛虫','images/most/1212.jpg','images/most/12.jpg','五大脑洞的大龄单身女 无发达签上海美签一次面试通过的回顾'
);
INSERT INTO qyhot VALUES(
    NUll,'lynnyao1010','images/most/1313.jpg','images/most/13.jpg','闲来无事，有问必答!关于英签，美签，申根，澳签和新西兰问题'
);
INSERT INTO qyhot VALUES(
    NUll,'annie215','images/most/1414.jpg','images/most/14.jpg','【对世界上瘾】那些废片教我的事II。写给爸爸妈妈的非专业儿童'
);
INSERT INTO qyhot VALUES(
    NUll,'PY小露宝','images/most/1515.jpg','images/most/15.jpg','【PY小露宝】冬日三月在欧洲【我与沙发客主的故事】'
);
INSERT INTO qyhot VALUES(
    NUll,'菊根儿','images/most/1616.jpg','images/most/16.jpg','【对世界上瘾】13天三女子马来西亚+斯里兰卡全程自助之旅'
);
INSERT INTO qyhot VALUES(
    NUll,'Leo_RUC','images/most/1717.jpg','images/most/17.jpg','【邂逅心中最美旅行地】8月深冬新西兰岛自驾 万字百图全纪录'
);
INSERT INTO qyhot VALUES(
    NUll,'古道热肠001','images/most/1818.jpg','images/most/18.jpg','【来日幼稚少女，云上再会】澳大利亚20日深度自由行：悉尼塔岛'
);
INSERT INTO qyhot VALUES(
    NUll,'粉色棒棒糖','images/most/1919.jpg','images/most/19.jpg','【对世界上瘾】追逐‘枫雪之旅’日本京都、北海道十日游'
);
INSERT INTO qyhot VALUES(
    NUll,'IMOCE_FANNY','images/most/2020.jpg','images/most/20.jpg','【对世界上瘾】那些地方只有去过的人才知道——韩国篇'
);
INSERT INTO qyhot VALUES(
    NUll,'Yazi_flying','images/most/2121.jpg','images/most/21.jpg','超10000km史诗般的火车之旅——母与女东->西跨俄罗斯'
);
INSERT INTO qyhot VALUES(
    NUll,'susan9150','images/most/2222.jpg','images/most/022.jpg','15天拔牙回忆录（巴塞罗那、塞尔维亚、科尔多瓦、格拉纳尔）'
);
INSERT INTO qyhot VALUES(
    NUll,'涵羞草mymy','images/most/2323.jpg','images/most/23.jpg','旅行是一种修行————走进童话锡兰（完结）'
);
INSERT INTO qyhot VALUES(
    NUll,'星星在歌唱中','images/most/2424.jpg','images/most/24.jpg','大假来临，手把手教你用手机拍出有逼格的旅行照片'
);
INSERT INTO qyhot VALUES(
    NUll,'古道热肠001','images/most/2525.jpg','images/most/25.jpg','美国签证，精简图文干货如何不求人自己轻松岗顶美国签证'
);
INSERT INTO qyhot VALUES(
    NUll,'我是安小恰','images/most/2626.jpg','images/most/26.jpg','【对世界上瘾】追寻富士山の酸甜苦辣日本行【东京+箱根+河口湖】'
);
INSERT INTO qyhot VALUES(
    NUll,'purleeyes4444','images/most/2727.jpg','images/most/27.jpg','在西班牙猛吃+减肥的日子-10月10日跟新狮子庭院'
);
INSERT INTO qyhot VALUES(
    NUll,'小邹Liya','images/most/2828.jpg','images/most/28.jpg','为你，耶路撒冷。|以色列约旦10日（攻略前置，Petra,安曼）'
);
INSERT INTO qyhot VALUES(
    NUll,'chalffy','images/most/2929.jpg','images/most/29.jpg','【对世界上瘾】多彩法兰西，普罗旺斯的夏天遇上多情的巴黎'
);
INSERT INTO qyhot VALUES(
    NUll,'MsTa2SS','images/most/3030.jpg','images/most/30.jpg','潜水，男教练性骚扰女学员，离你有多远'
);
INSERT INTO qyhot VALUES(
    NUll,'MOK莫梵稀','images/most/3131.jpg','images/most/31.jpg','白夜之后，俄罗斯远东之歌'
);
INSERT INTO qyhot VALUES(
    NUll,'北石同学','images/most/3232.jpg','images/most/32.jpg','南极行：有梦的地方便是天堂'
);
INSERT INTO qyhot VALUES(
    NUll,'24帧生活','images/most/3333.jpg','images/most/033.jpg','世界那么大值日本 #花样奶奶#东京 京都 仙台樱花の旅'
);
INSERT INTO qyhot VALUES(
    NUll,'木木的芸','images/most/3434.jpg','images/most/34.jpg','三蓝之旅，六天五夜，马耳他的蔚蓝天'
);
INSERT INTO qyhot VALUES(
    NUll,'sucuk','images/most/3535.jpg','images/most/35.jpg','2016年6月中亚五国签证办理详情'
);
INSERT INTO qyhot VALUES(
    NUll,'人字拖小姐Iris','images/most/3636.jpg','images/most/36.jpg','走一圈北爱，在悄悄潜入爱尔兰喝杯啤酒可好？（初春的泰坦尼克博物馆）'
);
INSERT INTO qyhot VALUES(
    NUll,'阿瑶你又调皮惹','images/most/3737.jpg','images/most/37.jpg','【上帝说 要有户外天堂，于是，便有了落基山脉】房车之旅 首楼户'
);
INSERT INTO qyhot VALUES(
    NUll,'贝小贤','images/most/3838.jpg','images/most/38.jpg','心之旅。吴哥窟：你，独坐在须弥山巅，带我看遍这座遗落的王城'
);
INSERT INTO qyhot VALUES(
    NUll,'zhenyanhaoma','images/most/3939.jpg','images/most/39.jpg','格鲁吉亚干货攻略（含巴统申请亚美尼亚、阿塞拜疆签证详细信息攻略）'
);
INSERT INTO qyhot VALUES(
    NUll,'赵小洛','images/most/4040.jpg','images/most/40.jpg','摩洛哥|淳朴与狡黠为伴 天堂共地狱相邻（实用信息+免签后最新攻略）'
);


CREATE TABLE  fqyer(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    fic VARCHAR(64),
    fnm VARCHAR(64),
    fan VARCHAR(64),
    pni VARCHAR(64)
);

INSERT INTO fqyer VALUES(
    NULL,'images/discover/1.jpg','big_michael','291粉丝','问答探路者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/2.jpg','parkney','57粉丝','目的地玩家'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/3.jpg','Nicolesyo','56粉丝','问答探路者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/4.jpg','Greay','37粉丝','穷游美国多本锦囊作者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/5.jpg','枫行Maple','76粉丝','目的地玩家'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/6.jpg','米赫墨的票','68粉丝','穷游网新墨西哥锦囊作者'
);

INSERT INTO fqyer VALUES(
    NULL,'images/discover/7.jpg','furankb','41粉丝','问答探路者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/8.jpg','阿晚子','4粉丝','问答探路者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/9.jpg','Phonebe-JIA','302粉丝','穷游精华作者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/10.jpg','谁水','37粉丝','穷游美国多本锦囊作者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/11.jpg','西红柿疙瘩汤2号','1粉丝','穷游丹麦锦囊作者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/12.jpg','唐僧老哥哥','16粉丝','问答探路者'
);

INSERT INTO fqyer VALUES(
    NULL,'images/discover/13.jpg','陈颠兔','26粉丝','问答探路者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/14.jpg','海蓝映尘','613粉丝','穷游精华作者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/15.jpg','joker_x_x','5粉丝','问答探路者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/16.jpg','念小遗','110粉丝','穷游精华作者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/17.jpg','枫行Maple','98粉丝','穷游精华作者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/18.jpg','fbird','50粉丝','穷游精华作者'
);

INSERT INTO fqyer VALUES(
    NULL,'images/discover/19.jpg','楼佳云','133粉丝','摄影资审用户'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/20.jpg','hudiealai','15粉丝','问答探路者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/21.jpg','沙漠玫瑰','24粉丝','问答探路者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/22.jpg','sMrZhao','78粉丝','穷游精华作者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/23.jpg','枫行Maple','76粉丝','目的地玩家'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/24.jpg','破朔迷离2008','62粉丝','穷游精华作者'
);

INSERT INTO fqyer VALUES(
    NULL,'images/discover/25.jpg','big_michael','291粉丝','问答探路者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/26.jpg','parkney','57粉丝','目的地玩家'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/27.jpg','破朔迷离2008','62粉丝','穷游精华作者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/28.jpg','Greay','37粉丝','穷游美国多本锦囊作者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/29.jpg','枫行Maple','76粉丝','目的地玩家'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/30.jpg','米赫墨的票','68粉丝','穷游网新墨西哥锦囊作者'
);

INSERT INTO fqyer VALUES(
    NULL,'images/discover/31.jpg','米赫墨的票','291粉丝','问答探路者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/32.jpg','parkney','57粉丝','目的地玩家'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/33.jpg','Greay','56粉丝','问答探路者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/34.jpg','Greay','37粉丝','穷游美国多本锦囊作者'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/35.jpg','沙漠玫瑰','76粉丝','目的地玩家'
);
INSERT INTO fqyer VALUES(
    NULL,'images/discover/36.jpg','米赫墨的票','68粉丝','穷游网新墨西哥锦囊作者'
);

CREATE TABLE qyext(
    eid INT PRIMARY KEY AUTO_INCREMENT,
    eic VARCHAR(64),
    ett VARCHAR(64),
    enm VARCHAR(64),
    eit VARCHAR(64)
);

INSERT INTO qyext VALUES(
    NUll,'images/img1/1.jpg','里约游不可错过景点推荐','李白喝酒','推荐了5个目的地'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/2.jpg','[中秋]北京、天津直飞济州岛5天四晚自由行入住四星、5星酒店','济州岛','1699元起'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/3.jpg','女挑夫+花样爷爷奶奶团法瑞23天自由行法国篇','西岸1129','1343浏览过'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/4.jpg','昂热','法国城市','745个人去过这里'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/5.jpg','琅勃拉邦','老挝城市','5150个人去过这里'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/6.jpg','[中秋/国庆]上海直飞普吉岛6天4晚自由行','普吉岛','1699元起'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/7.jpg','2014巴黎购物值购物中心介绍','ddqq的围脖','推荐了7个目的地'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/8.jpg','圣保罗综合市场','圣保罗景点','当地景点排名第8'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/9.jpg','旧市场广场','鲁昂景点','当地景点排名第3'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/10.jpg','台北','中国城市','54730个人去过这里'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/11.jpg','2016/2日雪夜光（芬兰法国）（已完结）','Chez_Helene','26038人浏览过'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/12.jpg','莎士比亚书店','巴黎购物','当地购物排名第三'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/13.jpg','天神的下颚','雍容致殇','9223人浏览过'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/14.jpg','【增免税店优惠券】韩国普吉岛皇帝岛Bunglow Raya快艇浮潜','普吉岛','162元起'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/15.jpg','马赛现代建筑之旅','colombe03','推荐了8个目的地'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/16.jpg','【拒签全退】直飞东京/大阪3-30天往返含税机票（增签证）','东京，关东','2099元起'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/17.jpg','香港/澳门直飞跑老5/6天自由行（多酒店可选/增中文接送机）','帕劳','2699元起'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/18.jpg','汉堡仓库城','汉堡景点','当地排名第4'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/19.jpg','足尖丈量巴黎 All about Paris ','魏无心','176540人浏览过'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/20.jpg','【赠免税店优惠券】泰国普吉岛攀牙湾日落之旅','普吉岛','309元起'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/21.jpg','里约游不可错过景点推荐','李白喝酒','推荐了5个目的地'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/22.jpg','圣马洛海滩','圣马洛景点','当地景点排名第1'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/23.jpg','多伦多','加拿大城市','10724个人去过这里'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/24.jpg','One Day in 巴黎','fiona_OY','推荐了12个目的地'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/25.jpg','（金小山出品）【越下越爱，浪在法国】记洪水罢工欧洲杯','金小山','推荐了5个目的地'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/26.jpg','玫瑰海岸','拉尼永景点','当地排名第一'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/27.jpg','全国多滴直飞三亚5-6天自由行（五星酒店7选1，多重优惠）','三亚','1789元起'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/28.jpg','布鲁日的特色小店','ddqq的围脖','推荐了5个目的地'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/29.jpg','枫丹白露','法国城市','6482个人去过这里'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/30.jpg','园亭喷泉','艾克斯景点','当地酒店排名第5'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/31.jpg','4国8城法国意大利魅力之秋','军小军','55252人浏览过'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/32.jpg','【zdlight】-大手牵小手，我们仪器走之滑雪篇（四岁/五岁）','zdlight','13460人浏览过'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/33.jpg','香港/天津/北京成都出发芽庄4-7天自由行','芽庄','2299元起'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/34.jpg','巴黎公墓','小兔子冰淇淋','推荐了5个目的地'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/35.jpg','昂蒂步毕加索美术馆','安体提贝景点','当地景点排名第2'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/36.jpg','【陆潜之旅】【你的世界长什么样】','多多熊','31803人浏览'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/37.jpg','【4月4日 曼谷】穷游清迈Q-Home邀您参加','曼谷','Free'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/38.jpg','里约游不可错过景点推荐','李白喝酒','推荐了5个目的地'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/39.jpg','京都','日本城市','58258人去过这里'
);
INSERT INTO qyext VALUES(
    NUll,'images/img1/40.jpg','阿纳西岛宫','阿纳西景点','当地景点排名第3'
);




