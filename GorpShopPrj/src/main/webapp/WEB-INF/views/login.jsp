<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bar.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>
<style>

  main {
    width: 100vh;
    font-family: "Noto Sans KR", sans-serif;
  }

  .login_container {
    width: 1920px;
    background-color: aqua;
  }

  .login_wrap {
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    width: 400px;
    height: 50%;
    padding: 40px;
    box-sizing: border-box;
    margin: 0 auto;
  }
  .login_wrap h2 {
    font-size: 24px;
    text-align: center;
    margin-bottom: 20px;
  }

  #login_form > input {
    width: 100%;
    height: 48px;
    padding: 0 10px;
    box-sizing: border-box;
    margin-bottom: 20px;
    border: 0px;
    border: 1px solid #eee;
  }

  #login_btn {
    border: 0;
    margin-top: 20px;
    font-size: 18px;
    cursor: pointer;
    background-color: black;
    color: white;
    height: 48px;
  }

  #login_form span {
    color: #777;
    margin-left: 5px;
    font-size: 13px;
  }
  .passwordFind {
    margin-left: 56px;
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

  /* footer */
  .footer-container {
    font-family: "Noto Sans KR", sans-serif;
      position: fixed;
      bottom: 0;
      width: 100%;
      background-color: white;
      height: 50px;
      align-items: center;
      display: flex;
      border-top: 1px solid #eee;
  }

  .footer-content {
    width: 1860px;
    height: 50px;
    justify-content: space-between;
    margin: 0 auto;
    display: flex;
    align-items: center;
    font-family: "Roboto", sans-serif;
  }

  .footer-content ul {
    display: flex;
  }

  .left-footer {
    font-weight: bold;
    color: black;
  }

  .mid-footer {
    font-size: 13px;
    margin-left: 50px;
    color: black;
  }

  .right-footer {
    margin-left: 480px;
  }

  .right-footer a {
    text-decoration: none;
    color: black;
    margin-left: 7px;
 }
    #kakao-login-btn {
        cursor: pointer;
    }

    #kakaoLogout {
        cursor: pointer;
    }
</style>
<body>
  <header>
    <nav>
      <div class="bar_container">
          <div class="left_wrap">
            <ul>
              <a href="product.html"><li>Shop</li></a>
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
              <a href="contact.html"><li>Contact</li></a>
              <a href="login.html"><li>Login</li></a>
              <a href="javascript:kakaoLogout();" style="cursor: pointer;" >카카오 로그아웃</a>
              <a href="#"><li>Cart(0)</li></a>
            </ul>
          </div>
      </div>
    </nav>
  </header>
  <main>
    <div class="login_container">
      <div class="login_wrap">
        <h2>로그인</h2>
        <form  id="login_form">
          <input type="text" id="userId" name="userId" placeholder="이메일">
          <input type="password" id="userPw" name="userPw" placeholder="비밀번호">
          <label for="remember-check">
                <input type="checkbox" id="remember-check"><span>이메일 저장하기</span>
          </label>
          <a href="/member/findPw " class="passwordFind">비밀번호를 잊어버리셨나요?</a>
          <input id="login_btn" type="button" value="로그인">
          <a href="javascript:kakaoLogin();"><img src="${pageContext.request.contextPath}/resources/images/kakao_login_medium_wide.png" alt="" style="width: 100%;"  ></a>
          <div class="register">
            <span >GORP SHOP에 회원가입 하시겠습니까? <a href="/member/register">회원가입</a></span>
          </div>
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
<script src = "https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type='text/javascript'>

// 로그인 값 보내기
$("#login_btn").click( function () {
    let userId = document.getElementById("userId");
    let userPw = document.getElementById("userPw");

    if ( userId.value == "" || userId.value === "" ) {
        alert("공백을 입력해주세요");
        userId.value == "";
        userId.focus();

    } else if ( userPw.value == "" || userPw.value === "" ) {
        alert("공백을 입력해주세요");
        userPw.value == "";
        userPw.focus();
    }

    let obj = {
        userId: userId.value,
        userPw: userPw.value
    }

    $.ajax({
                   type: "post",
                   url: "/member/login",
                   contentType: "application/json",
                   dataType: "text",
                   data: JSON.stringify(obj),
                   success: function(msg) {
                     if (msg.trim() === "success") { // 수정: 문자열 trim() 처리 및 비교 연산자 수정
                       window.location.href = "/";
                     } else {
                       alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
                       window.location.href = "/member/login";
                     }
                   }
                 });

});

window.Kakao.init('23a2d97f65c1f4dea1a19cd13d0759c1');

// 카카오톡 로그인
function kakaoLogin() {
    window.Kakao.Auth.login({
        scope:'profile_nickname, account_email, name, shipping_address',
        success: function(authObj) {
            console.log(authObj);
            window.Kakao.API.request({
                url:'/v2/user/me',
                success: res => {
                    const kakao_account = res.kakao_account;
                    console.log(kakao_account);
                    location.href = "/";
                }
            });
        }
    });
}

// 카카오톡 로그아웃
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        	alert("이용해주셔서 감사합니다.");
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }
</script>
</html>