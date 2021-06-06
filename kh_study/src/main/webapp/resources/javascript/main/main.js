
$(document).ready(function() {
    /*
     * Main variables
     */
    var content = [{
      title: "Hi! Do you want study? :)",
      desc: "I hope i can be of help !"
    }, {
      title: "Sign In",
      desc: "Come on apply ! :D"
    }, {
      title: "Sign Up",
      desc: "Haven't signed up yet? Join now!"
    }, {
      title: "Admin Page",
      desc: "Warning!! X("
    }];
    var currentPage = 0;
    //generate content
    for (var i = 0; i < content.length; i++) {
      //split content letters to array
      for (var obj in content[i]) {
        //if string
        if (typeof content[i][obj] === "string") {
          content[i][obj] = content[i][obj].split("");
          continue;
        }
        //if array (grouped text)
        else if (typeof content[i][obj] === "object") {
          var toPush = [];
          for(var j = 0; j < content[i][obj].length; j++) {
            for(var k = 0; k < content[i][obj][j].length; k++) {
              toPush.push(content[i][obj][j][k]);
            }
          }
          content[i][obj] = toPush;
        }
      }
      //set text to 
      $("#segments").append("<div class=\"letters-wrap mutable\"><div class=\"soup-title\"></div><div class=\"soup-desc\"></div></div>");
      setText();
      $(".soup-title").mouseover(function(){
          $(this).css("font-weight", "bolder");
          $(this).css("cursor", "pointer");
          $('.modal').css('z-index','10000');/* 여기가 z-index 추가된 부분 입니다.*/
      });

      //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
      $(".soup-title").click(function(){
          if(currentPage == 0){
              location.href="/reservationFrm.do"
          }else if(currentPage == 1){
            // location.href="#"
            modalShow(1);
          }else if(currentPage == 2){
            // location.href="#"
            modalShow(2);
          }else if(currentPage == 3){
            location.href="#"
            console.log("관리자");
          }
      });
      $(".soup-title").mouseout(function(){
          $(this).css("font-weight", "lighter");
      })
      //clone to data
      $("#segments").append("<div class=\"letters-wrap position-data\"><div class=\"soup-title\"></div><div class=\"soup-desc\"></div></div>");
      setText();
    }
    //initial arrangement
    arrangeCurrentPage();
    scrambleOthers();
    /*
     * Event handlers
     */
    $(window).resize(function() {
      arrangeCurrentPage();
      scrambleOthers();
    });
    $("#soup-prev").hide();
    $("#soup-prev").click(function() {
      $("#soup-next").show();
      currentPage--;
      if (currentPage === 0) {
        $("#soup-prev").hide();
      }
      arrangeCurrentPage();
      scrambleOthers();
    });
    $("#soup-next").click(function() {
      $("#soup-prev").show();
      currentPage++;
      if (currentPage === content.length - 1) {
        $("#soup-next").hide();
      }
      arrangeCurrentPage();
      scrambleOthers();
    });
    /*
     * Functions
     */
    function arrangeCurrentPage() {
      for (var i = 0; i < content[currentPage].title.length; i++) {
        $(".mutable:eq(" + currentPage + ") > .soup-title > .letter").eq(i).css({
          left: $(".position-data:eq(" + currentPage + ") > .soup-title > .letter").eq(i).offset().left + "px",
          top: $(".position-data:eq(" + currentPage + ") > .soup-title > .letter").eq(i).offset().top + "px",
          color: "#111",
          zIndex: 9001
        });
      }
      for (var i = 0; i < content[currentPage].desc.length; i++) {
        $(".mutable:eq(" + currentPage + ") > .soup-desc > .letter").eq(i).css({
          left: $(".position-data:eq(" + currentPage + ") > .soup-desc > .letter").eq(i).offset().left + "px",
          top: $(".position-data:eq(" + currentPage + ") > .soup-desc > .letter").eq(i).offset().top + "px",
          color: "#111",
          zIndex: 9001
        });
      }
    }
  
    function setText() {
      var j;
      for (j = 0; j < content[i].title.length; j++) {
        $(".soup-title").last().append("<span class=\"letter\">" + content[i].title[j] + "</span>");
      }
      for (j = 0; j < content[i].desc.length; j++) {
        $(".soup-desc").last().append("<span class=\"letter\">" + content[i].desc[j] + "</span>");
      }
    }
  
    function scrambleOthers() {
      for (var i = 0; i < content.length; i++) {
        //don't scramble currentPage
        if (currentPage === i)
          continue;
        var parts = [
          ["title", ".soup-title"],
          ["desc", ".soup-desc"]
        ];
        //apply to .title h1s and .desc ps
        for (var j = 0; j < parts.length; j++) {
          for (var k = 0; k < content[i][parts[j][0]].length; k++) {
            //define random position on screen
            var randLeft = Math.floor(Math.random() * $(window).width());
            var randTop = Math.floor(Math.random() * $(window).height());
            //defining boundaries
            var offset = $(".position-data").eq(currentPage).offset();
            var bounds = {
              left: offset.left,
              top: offset.top,
              right: $(window).width() - offset.left,
              bottom: $(window).height() - offset.top
            };
            var middleX = bounds.left + $(".position-data").eq(currentPage).width() / 2;
            var middleY = bounds.top + $(".position-data").eq(currentPage).height() / 2;
            //finally, apply all the scrambles
            $(".mutable:eq(" + i + ") > " + parts[j][1] + " > .letter").eq(k).css({
              left: randLeft,
              top: randTop,
              color: "#DDD",
              zIndex: "initial"
            });
          }
        }
      }
    }
    //modal 'x'버튼 클릭 이벤트 함수
    $('#closeModalBtn').click(function(){
      const login = $('.modalBox-login').css('display');  //로그인 창의 display 상태
      const signUp = $('.modalBox-signUp').css('display');  //회원가입 창의 display 상태
      if(login == 'flex'){
        modalHide(1);
      }else if(signUp == 'flex'){
        modalHide(2);
      }
    });
    //html 전체에 클릭 이벤트 함수
    document.addEventListener('click',function(event){
      //모달box외 영역 클릭 시 모달 닫기
      if(event.target.className=='modal' && $(event.target).children('.modalBox-login').css('display')=='flex'){
        modalHide(1);
      }else if(event.target.className=='modal' && $(event.target).children('.modalBox-signUp').css('display')=='flex'){
        modalHide(2);
      }
    });
    //로그인 버튼 클릭 시 ajax 통해 db조회
    $('.loginBtn').click(function(){
    });
    //회원가입 버튼 클릭 시 유효성 검사 그리고 id중복 체크
    $('.signUpBtn').click(function(){
    });
    //회원가입 input:focus 함수
    $('.sign-inputs').focus(function(){
      const id = $(this).attr('id');
      if(id == 'studentId'){
        $(this).attr('placeholder','영어 대소문자,숫자 필수 8~16자 입력');
      }else if(id == 'studentPw'){
        $(this).attr('placeholder','영어 대소문자,숫자 필수 10~20자 입력');
      }else if(id == 'studentName'){
        $(this).attr('placeholder',`이름(한글)을 입력하세요.`);
      }
    });
    //회원가입 input:focus 해제 함수
    $('.sign-inputs').blur(function(){
      const id = $(this).attr('id');
      if(id == 'studentId'){
        $(this).attr('placeholder','ID');
      }else if(id == 'studentPw'){
        $(this).attr('placeholder','PASSWORD');
      }else if(id == 'studentName'){
        $(this).attr('placeholder','Name');
      }
    });
    //로그인 모달에서 회원가입 이동 시 이벤트 함수
    $('#signUpMove').click(function(){
      modalHide(1);           //1. 모달은 닫아준다.
      currentPage++;          //2. '>'버튼 클릭 시 currentPage가 증가하고 회원가입은 다음 currentPage에 존재 하므로 ++ 해준다(
      arrangeCurrentPage();   //3. 이동 버튼에 따른 효과인것 같다.
      scrambleOthers();       //4. 3번과 동일
      modalShow(2);           //5. 회원가입 모달을 띄워준다.
    });
    //아이디 찾기 버튼 클릭 이벤트 함수
    $('#forgetId').click(function(){
      $('.forgetPw').css('right','calc(-100%/2)');
      $('.forgetId').css('left','calc(100%/2)');
      $('.forgetId').css('transform','translateX(-50%)');
    });
    //비밀번호 찾기 버튼 클릭 이벤트 함수
    $('#forgetPw').click(function(){
      $('.forgetId').css('left','calc(-100%/2)');
      $('.forgetPw').css('right','calc(100%/2)');
      $('.forgetPw').css('transform','translateX(50%)');
    });
    //회원가입 전화번호 입력 시 자동 포커스 이동 for문 > 함수
    for(var i=0;i<document.getElementsByClassName('phones').length;i++){
      document.getElementsByClassName('phones')[i].addEventListener('keyup',function(){
          if(this.name == 'phone1' && this.value.length === 3){
              document.getElementsByName('phone2')[0].focus();
          }else if(this.name == 'phone2' && this.value.length === 4){
              document.getElementsByName('phone3')[0].focus();
          }
      });
    }
  });
  //==========================================================================================================================
  //modal show 함수
  function modalShow(num){
    //modal창
    const modal = document.getElementsByClassName('modal')[0];
    if(num == 1){   // 매개변수가 modal-로그인일 때
      const modalBox = document.getElementsByClassName('modalBox-login')[0];
      modalBox.style.display = 'flex';
      modal.style.display = 'flex';
      setTimeout(function(){
        modalBox.style.backgroundColor = 'rgba(255,255,255,1)';
        modalBox.style.top = '50%';
        modalBox.style.transform = 'translateY(-50%)';
      },100);
    }else if(num == 2){   //매개변수가 modal-회원가입일 때
      const modalBox = document.getElementsByClassName('modalBox-signUp')[0];
      modalBox.style.display = 'flex';
      modal.style.display = 'flex';
      setTimeout(function(){
          modalBox.style.backgroundColor = 'rgba(255,255,255,1)';
          modalBox.style.bottom = '50%';
          modalBox.style.transform = 'translateY(50%)';
      },100);
    }
  }
  //modal hide 함수
  function modalHide(num){ 
    $('.modal').css('display','none');
    if(num == 1){       //매개변수가 1 : 모달로그인창
      $('.modalBox-login').css('display','none');         //로그인창 hide
      $('.modalBox-login').css('top','-400px');           //로그인창 위치 초기화
      $('.loginInfo').val('');      // 로그인 창의 입력된 정보 초기화
      $('.forget-inputs').val('');  // 아이디/비밀번호 찾기의 입력된 정보 초기화
      $('.forgetId').css('left','calc(-100% / 2)');
      $('.forgetPw').css('right','calc(-100% / 2)');
    }else if(num == 2){   //2 : 모달회원가입창
      $('.modalBox-signUp').css('display','none');        //가입창 hide
      $('.modalBox-signUp').css('bottom','-650px');       //가입창 위치 초기화
      $('.sign-inputs').val('');    //입력된 정보 초기화
    }
  }