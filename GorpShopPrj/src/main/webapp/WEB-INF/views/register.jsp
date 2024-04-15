<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <!-- jquery -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bar.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
  .wrong_text{font-size:1rem;color:#f44e38;letter-spacing:-.2px;font-weight:300;margin:8px 0 2px;line-height:1em;display:none}

  main {
    width: 100%;
    height: 100vh;
    font-family: "Roboto", sans-serif;
  }

  .login_container {
    width: 1800px;
    height: 100%;
    font-family: "Roboto", sans-serif;
    margin: 0 auto;
  }

  .login_wrap {
    justify-content: center;
    align-items: center;
    width: 600px;
    height: 400px;
    padding: 40px;
    box-sizing: border-box;
    margin: 0 auto;
  }
  .login_wrap h2 {
    font-size: 24px;
    text-align: center;
    margin-bottom: 20px;
  }

  #register_form > input {
    width: 100%;
    height: 48px;
    padding: 0 10px;
    box-sizing: border-box;
    border: 0px;
    border: 1px solid #eee;
  }

  #btn {
    border: 0;
    margin-top: 20px;
    font-size: 18px;
    cursor: pointer;
    background-color: black;
    color: white;
    height: 48px;
  }

  #register_form span {
    color: #777;
    margin-left: 5px;
    font-size: 13px;
  }
  .passwordFind {
    margin-left: 35px;
    color: #777;
    font-size: 13px;
  }

  .register span a {
    font-weight: bold;
    color: black;
    padding-top: 20px;
  }

  .register {
    margin-top: 7px;
  }

  #tel1 {
    border: none;
    padding: 14px 60px;
    border: 1px solid #eee;
  }

  #register_form p {
    margin-top: 5px;
    margin-bottom: 15px;
  }

  .mar {
    margin-bottom: 20px;
  }
  p {
    margin-bottom: 20px;
  }
</style>
<body>
  <nav>
    <div class="bar_container">
        <div class="left_wrap">
          <ul>
            <a href="#"><li>Shop</li></a>
            <a href="#"><li>Acahive</li></a>
            <a href="#"><li>Vue</li></a>
            <a href="#">Stockists</a>
          </ul>
        </div>
        <div class="logo_wrap">
          <a href="bar.html"><li>GORP SHOP</li></a>
        </div>
        <div class="right_wrap">
          <ul>
            <a href="#"><li>Contact</li></a>
            <a href="login.html"><li>Login</li></a>
            <a href="#"><li>Cart(0)</li></a>
          </ul>
        </div>
    </div>
  </nav>
  <main>
    <div class="login_container">
      <div class="login_wrap">
        <h2>회원가입</h2>
        <form method="" action="" id="register_form">
          <input type="text" id="userId" placeholder="이메일">
          <p style="margin-bottom: 20px; font-size: 14px;" id="check_userId"></p>
          <input type="password" id="userPw" placeholder="비밀번호(영문 대소문자/숫자/특수문자중 2가지 이상 조합, 10자~16자)">
          <p style="margin-bottom: 20px; font-size: 14px;" id="check_userPw"></p>
          <input type="password" id="check_password" placeholder="비밀번호 확인">
          <p style="margin-bottom: 20px; font-size: 14px;" id="check_password2"></p>
          <input type="text" id="userName" placeholder="이름">
          <p style="margin-bottom: 20px; font-size: 14px;" id="check_userName"></p>
          <select id="tel1" title="모바일 앞자리">
            <option value="010">010</option>
            <option value="011">011</option>
            <option value="016">016</option>
            <option value="017">017</option>
            <option value="018">018</option>
            <option value="019">019</option>
          </select> -
          <input type='tel' id='tel2' style="width: 30.8%;" maxlength="4" placeholder="휴대전화">-
          <input type='tel' class="mar" id='tel3' style="width: 30.8%;" maxlength="4">
          <p style="margin-bottom: 20px; font-size: 14px;" id="check_tel"></p>
          <input type="text" class="mar" id="postcode" placeholder="우편번호" >
          <input type="button" class="mar" style="cursor: pointer; font-weight: bold;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" ><br>
          <input type="text" class="mar" id="address" placeholder="주소"><br>
          <input type="text" class="mar" id="detailAddress" placeholder="상세주소">
          <input type="text" class="mar" id="extraAddress" placeholder="참고항목">
          <input type="button" id="btn" value="회원가입">
        </form>
      </div>
    </div>
  </main>
   <footer>
      <div class="footer-container">
        <div class="footer-content">
          <ul>
            <div class="left-footer">
              <li>@GORP SHOP, inc.</li>
            </div>
            <div class="mid-footer">
              <li>사업자 등록번호:261-123-4567 | 통신판매업:제 2023-부산진구-12345호| 개인정보보호책임자 홍길동 주소:서울특별시 봉천동 중앙대로 668 | 영업시간:영업시간:오전 11:00 ~ 오후 20:00</li>
            </div>
           <div class="right-footer">
              <a href="https://www.facebook.com/">
                <span> <i class="fa-brands fa-square-facebook"></i></span>
              </a>
              <a href="https://www.google.com/">
                <span> <i class="fa-brands fa-google"></i></span>
              </a>
              <a href="https://www.instagram.com/">
                <span> <i class="fa-brands fa-instagram"></i></span>
              </a>
              <a href=https://line.me/en/>
                <span> <i class="fa-brands fa-line"></i></span>
              </a>
              <a href="https://www.yotubu.com/">
                <span> <i class="fa-brands fa-youtube"></i></span>
              </a>
           </div>
            </div>
          </ul>
        </div>
      </div>
    </footer>
</body>
<script>
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


  $("#btn").click(function () {

    let obj = {
      userId: userId.value,
      userPw: userPw.value,
      userName: userName.value,
      tel1: tel1.value,
      tel2: tel2.value,
      tel3: tel3.value,
      postcode: postcode.value,
      address: address.value,
      detailAddress: detailAddress.value,
      extraAddress: extraAddress.value
    };

   $.ajax({
     type: "post",
     url: "/member/register",
     contentType: "application/json",
     dataType: "json",
     data: JSON.stringify(obj),
     success: function(msg) {
       console.log(msg); // 확인용 로그
       if (msg == "success") {
         window.location.href = "/member/login";
       } else {
         window.location.href = "/member/register";
       }
     }
   });

  });

</script>
<script src="${pageContext.request.contextPath}/resources/js/popup_2.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>