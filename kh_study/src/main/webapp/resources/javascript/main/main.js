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
    
    
    // 라이브러리 구분용 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    
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
    $('#loginBtn').click(function(){
    	const id = $('#studentId').val();
    	const pw = $('[name=studentPw]').val();
    	console.log(id);
    	console.log(pw);
    	$.ajax({
    		url : "/login.do",
    		type : "post",
    		data : {studentId : id, studentPw : pw},
    		success : function(data){
    			if(data == '1'){
    				alert(id+' 님 환영합니다');
    				cookieChk();
    			}else{
    				alert('아이디 또는 비밀번호가 일치하지 않습니다.');
    			}
    		}
    	});
    });
    $('.sign-inputs').keydown(function(){
    	var kcode = event.keyCode;
    	if(kcode == 32) event.returnValue = false;    
    });
    //회원가입 아이디 중복체크 함수
    $('#studentId').keyup(function(){
		var id = $(this).val();
		$.ajax({
			url : "/checkId.do",
			type : "post",
			data : {studentId : id},
			success : function(data){
				if(data == '1'){
					$('.regs').eq(0).css('color','red');
					$('.regs').eq(0).html('사용중인 ID 입니다.');
				}else{
					$('.regs').eq(0).css('color','green');
					$('.regs').eq(0).html('사용 가능한 ID 입니다.');
				}
			}
		});
    });
    //회원가입 버튼 클릭 시 유효성 검사 그리고 id중복 체크
    $('#signUpBtn').click(function(){
    	$('.joinForm input').css('box-shadow','none');
    	let checkReg = false;
    	console.log($('#stuClass').val());
    	checkReg = regId();		//아이디 유효성
    	checkReg = regPw();		//비밀번호 유효성
    	checkReg = chkPw();		//비밀번호 확인
    	checkReg = regName();	//이름 유효성
    	checkReg = classChk();	//class 검사
    	checkReg = regPhone();	//전화번호 양식
    	if(checkReg){
    		alert('가입 양식을 지켜주세요');
    		return;
    	}
    	//가입 정보 가져오기
    	const id = $('#studentId').val();
    	const pw = $('#studentPw').val();
    	const name = $('#studentName').val();
    	const no = $('#stuClass').val();
    	//phone1+phone2+phone3 합 처리
    	const phone = $('.phones').eq(0).val()+"-"+$('.phones').eq(1).val()+"-"+$('.phones').eq(2).val();
    	//ajax로 전송해 값을 받아와 결과를 제공하고 login창을 띄워준다
    	var obj = {
    		studentId : id,
    		studentPw : pw,
    		studentName : name,
    		studentClass : no,
    		phone : phone
    	}
    	$.ajax({
	    	url : "/join.do",
	    	type : "post",
	    	data : obj,
	    	success : function(data){
	    		if(data == 1){
	    			alert('가입되었습니다');
	    			modalHide(2);
			    	currentPage--;
			    	arrangeCurrentPage();
			    	scrambleOthers();
			    	modalShow(1);
	    		}else{
	    			alert('다시 시도해주세요');
	    		}
	    	}
    	});
    });
	
    //회원가입 input:focus 함수
    $('.sign-inputs').focus(function(){
      const id = $(this).attr('id');
      if(id == 'studentId'){
        $(this).attr('placeholder','영어 대소문자,숫자 필수 8~16자 입력');
      }else if(id == 'studentPw'){
        $(this).attr('placeholder','영어 대소문자,숫자 필수 10~20자 입력');
      }else if(id == 'studentName'){
        $(this).attr('placeholder',`이름(한글)을 최소 2자 입력하세요.`);
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
    loadClass();		//페이지 로드 시 ajax를 호출하여 개강되어있는 반을 불러온다.
    
    chkCookie();		//페이지 로드 시 쿠키에 등록 여부를 가져와 체크,input 자동 입력 
  });
  //==========================================================================================================================
  function cookieChk(){
  //로그인 버튼 클릭 ID 기억 체크에 따라 쿠키 등록/해제 동작 함수
        var test = $('#idSaveChk').is(':checked');          //체크박스의 checked를 가져옴 > true/false
        var studentId = $('#studentId').val();               //입력된 id값
        if(test){
            setCookie('studentId',studentId,7);                      //key:"studentId",value:studentId,7일 > 7일동안 쿠키에 등록해 기억됨
        }else{
            // setCookie('studentId',studentId,-1);                     //지난 날짜를 쿠키에 등록하면 삭제와 같은 동작
            deleteCookie('studentId',studentId);
        }
        location.href = "/reservationFrm.do"; 
  }
  //modal show 함수
  function modalShow(num){
    //modal창
    const modal = document.getElementsByClassName('modal')[0];
    if(num == 1){   // 매개변수가 modal-로그인일 때
    	chkCookie();
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
  //페이지가 로드되면 ajax로 db에서 개강중인 반을 가져와 append시키는 함수
  function loadClass(){
  	$.ajax({
  		url : "/searchClass.do",
  		async : false,
  		success : function(data){
  			var select = $(`<select name="studentClass" id="stuClass"><option value="default" selected> = Choice = </option>`);
  			for(var i=0;i<data.length;i++){
  				select.append(`<option value="${data[i].classNo}">${data[i].classSubject}</option>`);
  			}
  			select.append("</select>");
  			$('#selectBox').append(select);
  		}
  	});
  	
  } 
  //아이디 유효성 검사
  function regId(){
  	//reg : 유효성 검사 변수
    const reg = /^[a-zA-Z0-9]{8,16}$/;
    const id = $('#studentId').val();
    if(!reg.test(id) || id == ''){
    	$('#studentId').css('box-shadow','0px 0px 3px red');
    	//alert('아이디 양식을 확인하세요');
    	return true;
    }
    return false;
  }
  //비밀번호 유효성 검사
  function regPw(){
  	const reg = /^[a-zA-Z0-9]{10,20}$/;
  	const pw = $('#studentPw').val();
  	if(!reg.test(pw) || pw == ''){
  		$('#studentPw').css('box-shadow','0px 0px 3px red');
    	//alert('비밀번호 양식을 확인하세요');
  		return true;
  	}
  	return false;
  }
  //비밀번호 확인 검사
  function chkPw(){
  	const pw = $('#studentPw').val();
  	const pwChk = $('#pwChk').val();
  	if(pw != pwChk || pw == ''){
  		$('#pwChk').css('box-shadow','0px 0px 3px red');
  		return true;
  	}
  	return false;
  }
  //이름 유효성 검사
  function regName(){
  	const reg = /^[가-힣]{2,10}$/;
  	const name = $('#studentName').val();
  	if(!reg.test(name) || name == ''){
  		$('#studentName').css('box-shadow','0px 0px 3px red');
  		//alert('이름 양식을 확인하세요');
  		return true;
  	}
  	return false;
  }
  //class 선택 검사
  function classChk(){
  	const khClass = $('#stuClass').val();
  	if(khClass == 'default'){
  		$('#stuClass').css('box-shadow','0px 0px 3px red');
  		//alert('반을 선택하세요');
  		return true;
  	}
  	return false;
  }
  //전화번호 유효성 검사
  function regPhone(){
  	const phone1 = $('[name=phone1]').val();
  	const phone2 = $('[name=phone2]').val();
  	const phone3 = $('[name=phone3]').val();
  	if(!(phone1.length == 3 && phone1 == '010' && phone2.length >= 3 && phone3.length == 4)){
  		$('.phones').css('box-shadow','0px 0px 3px red');
  		//alert('전화번호를 정확히 입력하세요');
  		return true;
  	}
  	return false;
  }
  //매개변수명은 본인이 지정
	//name : key값
	//value : value값
	//exp : 저장할 기간(기한)
	function setCookie(name, value, exp) {
	    var date = new Date();
	    date.setTime(date.getTime() + exp*24*60*60*1000);                   //하루 기준 > exp는 1일 기준이다
	    document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/';        //잘 모르겠다...
	}
	function getCookie(name) {
	    var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
	    //값이 존재하지 않으면 null 리턴
	    return value? value[2] : null;  //console.log()찍어보면 value[]로 리턴되고 세번째(2)에 입력id가 들어있다.
	}
	function deleteCookie(name,studentId) {
	    // document.cookie = name + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
	    setCookie(name,studentId,-1);
	}
	function chkCookie(){
	    if(getCookie('studentId') != null){                 //쿠키에 key:'studentId'의 값(value)이 null이 아니라면 등록되어 있는 경우 > true
	        $('#idSaveChk').attr('checked','true');         //checkbox에 checked해준다.
	        $('#studentId').val(getCookie('studentId'));    //아이디 입력 input의 value에 쿠기에 등록된 id값을 자동 기입해준다.
	    }
	}