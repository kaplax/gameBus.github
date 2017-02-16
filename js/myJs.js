(function(){
	function userLogin() {
		var username = window.sessionStorage['username'];	
		if(username != null){
			$('[data-login=login]').children().html("欢迎回来!"+username);
			$('[data-reg=reg]').addClass('hide');
		}
	};
	userLogin();
	$('.sale>div>a').click(function(e) {
		/* Act on the event */
		e.preventDefault();
		$(this).addClass('on').siblings('a').removeClass('on');
		$('#'+$(this).attr('href'))
			.removeClass('hidden')
			.siblings('div.sale-bd')
			.addClass('hidden')	
	});

	$('.header-top-center-nav>li>a').click(function(event) {
		/* Act on the event */
		event.preventDefault();
		$(this).parent().addClass('tgActive').siblings('li').removeClass('tgActive');
		$($(this).attr('href'))
			.removeClass('hidden')
			.siblings('div')
			.addClass('hidden')
	});

	$(function(){
		$.ajax({
			url: 'data/info.php',
			success:function(pager){
				var dwhtml1='',dwhtml2='',
					wyhtml1='',wyhtml2='',
					syhtml1='',syhtml2='',
					smhtml1='',smhtml2='';

				$.each(pager,function(index, el) {
					$.each(el,function(key,value) {
						if (value.infoName === "dianwan" && key<9) {
							dwhtml1 += `
										<div class="media">
											<div class="media-left">
												<a href="#" class="btn-xs">${value.infoType}</a>
											</div>
											<div class="media-body">
												<a href="#">${value.infoContent}</a>
											</div>
										</div>
									`;
						}else if(value.infoName === "dianwan" && key>=9){
							dwhtml2 += `
										<div class="media">
											<div class="media-left">
												<a href="#" class="btn-xs">${value.infoType}</a>
											</div>
											<div class="media-body">
												<a href="#">${value.infoContent}</a>
											</div>
										</div>
									`;
						}
						if (value.infoName === "wangyou" && key<9) {
							wyhtml1 += `
										<div class="media">
											<div class="media-left">
												<a href="#" class="btn-xs">${value.infoType}</a>
											</div>
											<div class="media-body">
												<a href="#">${value.infoContent}</a>
											</div>
										</div>
									`;
						}else if(value.infoName === "wangyou" && key>=9){
							wyhtml2 += `
										<div class="media">
											<div class="media-left">
												<a href="#" class="btn-xs">${value.infoType}</a>
											</div>
											<div class="media-body">
												<a href="#">${value.infoContent}</a>
											</div>
										</div>
									`;
						}
					});
				});
				$('#HTC-dw .showNews:first').html(dwhtml1);		
				$('#HTC-dw .showNews:last').html(dwhtml2);
				$('#HTC-wy .showNews:first').html(wyhtml1);
				$('#HTC-wy .showNews:last').html(wyhtml2);

			},
		})
		$.ajax({
			url: 'data/scoreList.php',
			success:function(pager){
				var html='';
				$.each(pager,function(index, el) {
					html+=`
							<div class="media">
								<div class="media-left">
									<a href="#">
										<img src="${el.img}" class="media-object">
									</a>
								</div>
								<div class="media-body">
									<h4>${el.tittle}</h4>
									<p>${el.content}</p>
								</div>
								<div class="media-right">
									<div class="tgScore">
										<em>${el.score}</em>
									</div>
								</div>
							</div>
						`;
				});
				$('#scoreList .col-xs-12').html(html);
			}
		});
		$.ajax({
			url: 'data/gameSale.php',
			success:function(pager){
				var dwhtml='';
				var wyhtml='';
				$.each(pager,function(index,el) {
					if(el.type==='dianwan'){
						dwhtml+=`
								<tr>
									<td><a href="#">${el.gname}</a></td>
									<td><a href="#">${el.gtype}</a></td>
									<td><a href="#">${el.gplatform}</a></td>
									<td>${el.date}</td>
								</tr>
								`;
					}
					if(el.type==='wangyou'){
						wyhtml+=`
									<tr>
										<td><a href="#">${el.gname}<a></td>
										<td>
											<a href="#">${el.gtype}</a>
										</td>
										<td>
											<a href="#">
												<img src="${el.gplatform}">
											<a>
										</td>
										<td>${el.date}</td>
									</tr>
								`;

					}
				});
				$('#dw.sale-bd tbody').html(dwhtml);
				$('#wy.sale-bd tbody').html(wyhtml);
			},
		});
		$.ajax({
			url: 'data/hotgame.php',
			success:function(pager){
				var html='';
				$.each(pager,function(index, el){
					html+=`
							<div class="hotGame-content">
								<a href="#">
									<div class="hotGame-img">
										<div>
											<img src="${el.img}">
											<p class="hotGame-title">${el.title}</p>
										</div>
									</div>
									<p class="text-center">${el.hgName}</p>
								</a>
							</div>
							`;
				});
				$('.hotGame-list').html(html);
			},
		});	
	})

	// Carousel
	!function () {
		var pictures = document.getElementById("Carousel");
		var Items = pictures.getElementsByTagName("li");
		var len = Items.length;
		var index = 0;
		showItem();
		function showItem () {
			hideItems();
			Items[index].style.opacity = 1;
			if(index > len - 2){
				index = 0;
			}else {
				index++;
			}
			setTimeout(showItem,2000);
		}
		function hideItems () {
			for (var i = 0; i < len; i++){
				Items[i].style.opacity = 0;
			}
		}
	}()
	$('#userLogin').click(function () {
		var userName = $('input[name=username]').val();
		var userPassword = $('input[name=password]').val();
		$.ajax({
			url: 'data/login.php',
			type: 'post',
			dataType: 'json',
			data: {username: userName,
				   userpassword:userPassword},
			success:function (data) {
				if (data == 0) {
					alert("用户名或密码错误");
				}else{
					window.sessionStorage['username'] = userName;
					userLogin();
					newclick ();
				}
			}
		})
		
	})
	function newclick () {
		var fireOnThis = document.getElementById('close');
		var evObj = document.createEvent('MouseEvents');
		       evObj.initMouseEvent( 'click', true, false );
		       fireOnThis.dispatchEvent(evObj);
	}
})()