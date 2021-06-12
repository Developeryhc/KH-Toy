
    
    $(function () {
    
      console.clear();

      const nav = document.querySelector("nav");
      const navLinksContainer = document.querySelector(".nav-links");
      const navLinks = [...document.querySelectorAll(".link")];
      const menuBtn = document.querySelector(".menu-btn");
      const subMenuBtn = document.querySelector(".sub-menu-btn");

      function createHoverEl() {
        let hoverEl = document.createElement("div");
        hoverEl.className = "hover-el";
        hoverEl.style.setProperty("--y", "0px");
        hoverEl.style.setProperty("--mousex", "0px");
        hoverEl.style.setProperty("--mousey", "0px");
        navLinksContainer.appendChild(hoverEl);
      }
      createHoverEl();

      navLinks.forEach((link, index) => {
        let hoverEl = navLinksContainer.querySelector(".hover-el");
        link.style.setProperty("--delay", `${index * 50}ms`);
        link.addEventListener("mousemove", function (e) {
          hoverEl.style.setProperty("--y", `${index * 60}px`);
          hoverEl.style.setProperty("opacity", "1");
          hoverEl.style.setProperty(
            "--mousex",
            `${e.pageX - hoverEl.offsetLeft}px`
          );
          hoverEl.style.setProperty(
            "--mousey",
            `${e.pageY - hoverEl.offsetTop}px`
          );
        });
        navLinksContainer.addEventListener("mouseout", function () {
          hoverEl.style.setProperty("opacity", "0");
        });
        link.addEventListener("click", function () {
          let hoverEl = navLinksContainer.querySelector(".hover-el");
          hoverEl.style.opacity = "0";
          toggleSubmenu(link);
        });
      });

      menuBtn.addEventListener("click", function () {
        nav.classList.toggle("nav-open");
        menuBtn.classList.toggle("close");
      });
      subMenuBtn.addEventListener("click", function () {
        nav.classList.toggle("sub-menu-open");
        removeSubmenu();
      });

      function toggleSubmenu(el) {
        let subMenu = nav.querySelector(".sub-menu");
        if (el.children[1]) {
          createSubmenu(el);
        } else if (nav.contains(subMenu)) {
          removeSubmenu();
        } else {
          return;
        }
      }

      function createSubmenu(el) {
        let subMenuContainer = document.createElement("div");
        subMenuContainer.className = "sub-menu";
        let subMenuItem = el.children[1].cloneNode(true);
        let subMenuItemList = [...subMenuItem.children];
        subMenuItemList.forEach((item, index) => {
          item.classList.add("off-menu");
          item.style.setProperty("--delay", `${index * 40}ms`);
        });
        nav.classList.toggle("sub-menu-open");
        nav.appendChild(subMenuContainer);
        subMenuContainer.appendChild(subMenuItem);
        setTimeout(function () {
          subMenuItemList.forEach((item) => {
            item.classList.remove("off-menu");
            item.classList.add("on-menu");
          });
        }, 200);
      }
      function removeSubmenu() {
        let subMenu = nav.querySelector(".sub-menu");
        let subMenuItemList = [...subMenu.children[0].children];
        if (nav.contains(subMenu)) {
          subMenuItemList.forEach((item) => {
            item.classList.add("off-menu");
            item.classList.remove("on-menu");
          });
          setTimeout(function () {
            nav.removeChild(subMenu);
          }, 500);
        }
      }

      $("#datepicker").datepicker();

      $(".insert_btn").click(function () {
        $(".service").css("display", "none");
      });
      
      
      
//-----------------------사이드 메뉴 링크-----------------------------------------------
		
		function widthReset(){
			if($(this).innerWidth() < 1260){
				$('.adver').hide();
				$('.widthBannerWrap').show();
			}else{
				$('.adver').show();
				$('.widthBannerWrap').hide();
			}
		}
		widthReset();
		//lick > 사이드 메뉴의 li태그 아래의 a태그 href를 실행하느 함수
		$('.link').click(function(){
			if($(this).children().attr('id') == 'logoutLink'){
				location.href = "/logout.do";			
			}
		});
		$('#closeAdBtnW').click(function(){
			$('.adver').css('right','-200px');
		});
		$('#closeAdBtnH').click(function(){
			$('.widthBannerWrap').hide();
		});
		var widthBannerPage = 0;
		var heightBannerPage = 0;
		
		function bannerReset(){
			for(var i=1;i<=$('.banners').length;i++){
				$('.banners').eq(i).hide();
				console.log(i);
			}
			for(var i=1;i<=$('.wBanners').length;i++){
				$('.wBanners').eq(i).hide();
				console.log(i);
			}
		}
		bannerReset();
		
		function checkWidthBannerPage(page){
				$('#nextBtnW').attr('disabled',false);
				$('#prevBtnW').attr('disabled',false);			
			if(page == 0){
				$('#prevBtnW').attr('disabled',true);
			}
			if(page == 2){
				$('#nextBtnW').attr('disabled',true);
			}
		}
		checkWidthBannerPage(widthBannerPage);
		
		function checkHeightBannerPage(page){
				$('#nextBtnH').attr('disabled',false);
				$('#prevBtnH').attr('disabled',false);			
			if(page == 0){
				$('#prevBtnH').attr('disabled',true);
			}
			if(page == 1){
				$('#nextBtnH').attr('disabled',true);
			}
		}
		checkHeightBannerPage(heightBannerPage);
		
		$('#prevBtnW').click(function(event){
			prevBtnW();
		});
		function prevBtnW(){
			if(widthBannerPage == 1){
				widthBannerPage--;
				$('.banners').eq(0).show();
				$('.banners').eq(1).hide();
			}else if(widthBannerPage == 2){
				widthBannerPage--;
				$('.banners').eq(1).show();
				$('.banners').eq(2).hide();				
			}
			checkWidthBannerPage(widthBannerPage);
		}
		
		$('#nextBtnW').click(function(event){
			nextBtnW();
		});
		function nextBtnW(){
			if(widthBannerPage == 0){
				widthBannerPage++;
				$('.banners').eq(0).hide();
				$('.banners').eq(1).show();
			}else if(widthBannerPage == 1){
				widthBannerPage++;
				$('.banners').eq(1).hide();
				$('.banners').eq(2).show();
			}
			checkWidthBannerPage(widthBannerPage);		
		}
		$('#prevBtnH').click(function(){
			prevBtnH();
		});
		function prevBtnH(){
			if(heightBannerPage == 1){
				heightBannerPage--;
				$('.wBanners').eq(1).hide();
				$('.wBanners').eq(0).show();
			}
			checkHeightBannerPage(heightBannerPage);		
		}
		$('#nextBtnH').click(function(){
			nextBtnH();
		});
		function nextBtnH(){
			if(heightBannerPage == 0){
				heightBannerPage++;
				$('.wBanners').eq(0).hide();
				$('.wBanners').eq(1).show();
			}
			checkHeightBannerPage(heightBannerPage);		
		}
		$(window).resize(function(){
			widthReset();
		});
    });