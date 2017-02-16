(function () {
	(function refreshVerification(){
		var w = 120;  //画布的宽
		var h = 30;   //画布的高
		c1.width = w;
		c1.height = h;

		var ctx = c1.getContext('2d');
		ctx.textBaseline = 'top';

		//绘制背景颜色——矩形
		ctx.fillStyle = rc(180,230);
		ctx.fillRect(0,0,w,h);

		//绘制四个随机的文字
		var pool = 'ABCDEFGHJKLMNPQRSTUVWXY3456789';
		for(var i=0; i<4; i++){
		  var c = pool[rn(0,pool.length)];

		  ctx.save();  //保存画笔的当前状态
		  /***修改画笔状态，绘制一个字符***/
		  ctx.translate(i*30+15, 15);//平移到每个格的中央
		  ctx.rotate(rn(-45,45)*Math.PI/180); //旋转画笔
		  ctx.fillStyle = rc(80,180);
		  var fs = rn(12, 40); //随机字体大小
		  ctx.font = fs+'px SimHei';
		  ctx.fillText(c,-fs/2, -fs/2);
		  ctx.restore();  //恢复画笔的状态到初始值
		}
		//绘制五条干扰线——直线路径
		for(var i=0; i<5; i++){
		  ctx.beginPath(); //每个线都是一条新路径
		  ctx.moveTo(rn(0,w), rn(0,h));
		  ctx.lineTo(rn(0,w), rn(0,h));
		  ctx.strokeStyle = rc(0,255);
		  ctx.stroke();
		}
		//绘制50个干扰点——圆形路径
		for(var i=0; i<50; i++){
		  ctx.beginPath();
		  ctx.arc(rn(0,w), rn(0,h), 1, 0, 2*Math.PI);
		  ctx.fillStyle = rc(0,255);
		  ctx.fill();
		}

		//random number：返回指定范围内的随机整数
		function rn(min, max){
		  return Math.floor(Math.random()*(max-min)+min);
		}
		//random color：返回指定范围内的随机颜色
		function rc(min, max){
		  var r = rn(min,max);
		  var g = rn(min,max);
		  var b = rn(min,max);
		  return `rgb(${r},${g},${b})`;
		}
	})();
	function init (loc) {
		
	}
	function showTips(i,msg,tips){
		var content = $($("div[data-tips=tips]")[i]).children('span');
		content.html(msg);
		content.parent().removeClass().addClass(tips);
	}
	var isOk = false;
	var isAccept =false;
	var putData={};
	// 手机注册
	$("a[data-pg=pg]").click(function (event) {
		init()
		$(this).parent().addClass('active').siblings().removeClass("active");
		$(("div[data-pg=pg]")).removeClass("hide").siblings("div[data-eg=eg]").addClass('hide')
	})
	// 邮箱注册
	$("a[data-eg=eg]").click(function (event) {
		event.preventDefault()
		init();
		$(this).parent().addClass('active').siblings().removeClass("active");
		$(("div[data-eg=eg]")).removeClass("hide").siblings("div[data-pg=pg]").addClass('hide')
	})
	// 手机号验证
	$("input[data-PhoneNum=phoneNumber]").blur(function () {
		/* Act on the event */
		var phoneNum = $(this).val();
		var patten = /^1(3|4|5|7|8)\d{9}$/;
		if($(this).val()===""){
			showTips(0,"手机号不能为空","warning");
		}else if (!patten.test(phoneNum)) {
			showTips(0,"手机号有误","warning");
		}else if (patten.test(phoneNum)) {
			$.ajax({
				url: 'data/verifyPhone.php?phoneNum='+phoneNum,
				success:function (data) {	
					if (data.code === 0) {
						showTips(0,"","success");
						putData.userphone = phoneNum;
					}else{
						showTips(0,"手机号已注册","warning");
					}
				},
				error:function(){
					console.log("error")
				}
			});
			
		}
	});
	// 邮箱验证
	$("input[data-Email=Email]").blur(function () {
		/* Act on the event */
		var Email = $(this).val();
		var patten = /^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
		if($(this).val()===""){
			showTips(1,"邮箱不能为空","warning");
		}else if (!patten.test(Email)) {
			showTips(1,"邮箱地址有误","warning");
		}else if (patten.test(Email)) {
			$.ajax({
				url: 'data/verifyEmail.php?userEmail='+Email,
				success:function (data) {	
					if (data.code === 0) {
						showTips(1,"","success");
						putData.userEmail = Email;
					}else{
						showTips(1,"邮箱已注册","warning");
					}
				},
				error:function(){
					console.log("error")
				}
			});
		}
	});
	// 昵称验证
	$("input[data-name=name]").blur(function () {
		/* Act on the event */
		var username = $(this).val();
		var patten = /^[\\u4e00-\\u9fa5_a-zA-Z0-9-]{5,16}$/;
		if($(this).val()===""){
			showTips(2,"昵称不能为空","warning");
		}else if (!patten.test(username)) {
			showTips(2,"5-16位字符","warning");
		}else if (patten.test(username)) {
			$.ajax({
				url: 'data/verifyName.php?username='+username,
				success:function (data) {	
					if (data.code === 0) {
						showTips(2,"","success");
						putData.username = username;
					}else{
						showTips(2,"用户已注册","warning");
					}
				},
				error:function(){
					console.log("error")
				}
			});
			showTips(2,"","success");	
		}
	});
	// 密码验证
	$("input[data-pwd=pwd]").blur(function () {
		/* Act on the event */
		var password = $(this).val();
		var patten = /^([A-Z]|[a-z]|[0-9]|[`~!@#$%^&*()+=|{}':;',\\\\[\\\\].\<\>\/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]){6,20}$/;
		if($(this).val()===""){
			showTips(3,"密码不能为空","warning");
		}else if (!patten.test(password)) {
			showTips(3,"6-20位，字母、数字、字符","warning");
		}else if (patten.test(password)) {
			showTips(3,"","success");
			putData.password = password;
		}
	});
	// 确认密码
	$("input[data-repwd=repwd]").blur(function () {
		/* Act on the event */
		var phoneNum = $(this).val();
		if ($(this).val() != $("input[data-pwd=pwd]").val()) {
			showTips(4,"密码不一致","warning");
		}else if ($(this).val() === "") {
			showTips(4,"密码不能为空","warning");
		}
		else {
			showTips(4,"","success");
		}
	});
	// 是否接受条款
	$("input[data-clause=clause]").click(function () {
		if ($(this).prop("checked")) {
			// statement
			$("input[type=button]").removeClass().addClass("isReady");
			isAccept = true;
		}else {
			$("input[type=button]").removeClass();
			isAccept = false;
		}
	})
	// 提交信息
	$("input[type=button]").click(function () {
		/* Act on the event */	
		for(var i = 0; i < $("div[data-row=row]:not(.hide)").length; i++){
			var inde = $("div[data-row=row]:not(.hide)")[i]
			if(!$(inde).children("div:last-child")
				.children().hasClass('success')){
				return;
			}else{
				isOk = true;
			}
		}
		if(isOk&&isAccept){
			$.ajax({
				url: 'data/adduser.php',
				type: 'POST',
				data: {username: putData.username,
					   userpassword:putData.password,
					   userphone:putData.userphone
					},
				success:function(){
					window.sessionStorage['username'] = putData.username;
					$('.shadow').removeClass('hide');
					$('.alertMsg').removeClass('hide');
					setTimeout(function(){
						window.location.href = "1.html";
					},3000)
				}
			})
		}
	});

})()