function checkFrom() {
  let checkEmail = RegExp(/^([a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$/);
  let checkPW = RegExp(/^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[~!@#$%^&*()_+])[A-Za-z\d~!@#$%^&*()_+]{8,}$/);
  let checkName = RegExp(/^[가-힣]|[A-Z]|[a-z]$/);
  // 이메일
  $("#userId").blur( function() {
    if($("#userId").val() == "" || $("#userId").val() === "") {
      $("#userId").css("border-color", "red");
      $("#check_userId").text("공백을 입력해주세요.").css("color", "red");
    } else if (!checkEmail.test($("#userId").val()) ) {
      $("#userId").css("border-color", "red");
      $("#check_userId").text("올바르지않은 형식입니다.").css("color", "red");
    } else {
      $("#userId").css("border-color", "green");
      $("#check_userId").text("사용가능한 이메일입니다.").css("color", "green");
    }
  });

  // 패스워드
  $("#userPw").blur( function () {
    if($("#userPw").val() == "" || $("#userPw").val() === "") {
      $("#userPw").css("border-color", "red");
      $("#check_userPw").text("공백을 입력해주세요.").css("color", "red");
    } else if (!checkPW.test($("#userPw").val()) ) {
      $("#userPw").css("border-color", "red");
      $("#check_userPw").text("올바르지않은 형식입니다.").css("color", "red");
    } else {
      $("#userPw").css("border-color", "green");
      $("#check_userPw").text("올바른 형식입니다.").css("color", "green");
    }
  });

  // 패스워드 확인
  $("#check_password").blur( function () {
    if ( $("#check_password").val() == "" || $("#check_password").val() === "" ) {
      $("#check_password").css("border-color", "red");
      $("#check_password2").text("공백을 입력해주세요.").css("color", "red");
    } else if ( $("#userPw").val() != $("#check_password").val() ) {
      $("#check_password").css("border-color", "red");
      $("#check_password2").text("비밀번호가 서로 일치하지않습니다.").css("color", "red");
    } else {
      $("#check_password").css("border-color", "green");
      $("#check_password2").text("일치합니다.").css("color", "green");
    }
  });

  // 이름
  $("#userName").blur( function () {
    if ( $("#userName").val() == "" || $("userName").val() === "" ) {
      $("#userName").css("border-color", "red");
      $("#check_userName").text("공백을 입력해주세요.").css("color", "red");
    } else if ( !checkName.test($("#userName").val())) {
      $("#userName").css("border-color", "red");
      $("#check_userName").text("형식에 맞지않습니다.").css("color", "red");
    } else {
      $("#userName").css("border-color", "green");
    }
  });

  // 전화번호2
  $("#tel2").blur( function () {
    if( $("#tel2").val() =="" || $("#tel2").val() === "") {
      $("#check_tel").text("휴대전화를 입력해주세요.").css("color", "red");
    } else if ( $("#tel2").val().length != 4 ) {
      $("#check_tel").text("중간번호 4자리를 입력해주세요.").css("color", "red");

    }

  });

  // 전화번호3
  $("#tel3").blur( function () {
    if( $("#tel3").val() =="" || $("#tel3").val() === "") {
      $("#check_tel").text("휴대전화를 입력해주세요.").css("color", "red");
    } else if ( $("#tel3").val().length != 4 ) {
      $("#check_tel").text("마지막 번호 4 자리를 입력해주세요.").css("color", "red");
    }
  });

}
checkFrom()