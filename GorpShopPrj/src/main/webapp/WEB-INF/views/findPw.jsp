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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
</head>
<style>

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
         position: absolute;
         left: 50%;
         top: 50%;
         transform: translate(-50%, -50%);
         width: 600px;
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

    #register_form > input {
      width: 100%;
      height: 48px;
      padding: 0 10px;
      box-sizing: border-box;
      border: 0px;
      border: 1px solid #eee;
      margin-bottom: 20px;
    }

    #register_form > input {
      width: 100%;
      height: 48px;
      padding: 0 10px;
      box-sizing: border-box;
      border: 0px;
      border: 1px solid #eee;
      margin-bottom: 20px;
    }

    #findPw_btn {
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



  #tel {
    width: 100%;
    height: 48px;
    padding: 0 10px;
    box-sizing: border-box;
    border: 0px;
    border: 1px solid #eee;
    margin-bottom: 20px;
  }

  #phone2 {
    width: 100%;
    height: 48px;
    padding: 0 10px;
    box-sizing: border-box;
    border: 0px;
    border: 1px solid #eee;
    margin-bottom: 20px;
  }

  #phone_button {
    position: relative;
  }

  #phone_button button {
  position: absolute;
  width: 50px;
  height: 30px;
  top: 0;
  bottom: 20px;
  right: 5px;
  margin: auto 0;
  border-radius: 3px;
  cursor: pointer;
  border: none;
  border: 1px solid #eee;
  font-family: "Roboto", sans-serif;
  font-weight: bold;
  background-color: white;
}

#phone_button button:hover {
  background-color: black;
  color: white;
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
         <h2>비밀번호 찾기</h2>
         <form  id="register_form">
           <input type="text" id="userId" placeholder="이메일">
           <input type="text" id="userName"  placeholder="이름">
           <div id="phone_button">
            <input type="text" id="tel" maxlength="12" placeholder="휴대전화">
            <button id="phone_check">인증</button>
          </div>
           <div id="phone_button">
            <input type="text" id="phone2" placeholder="인증번호 입력해주세요">
            <button id="code_check">확인</button>
           </div>
           <input id="findPw_btn" type="button" value="확인">
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

    $(function () {
        let tel = document.getElementById("tel");
        let userId = document.getElementById("userId");
        let userName = document.getElementById("userName");
        var code2 = "";

        $("#findPw_btn").click( function() {
            if ( userId.value == "" ) {
                alert("공백을 입력해주세요.");
                userId.value == "";
                userId.focus();
            } else if ( userName.value == "" ) {
                alert("공백을 입력해주세요.");
                userName.value == "";
                userName.focus();
            } else {
                alert("공백을 입력해주세요.");
                tel.value == "";
                tel.focus();
            }
        });

       $("#phone_check").click(function(e) {
           e.preventDefault();
           var tel = $("#tel").val();

           if (tel.value == "") {
               alert("공백을 입력하세요");
           } else {
               alert("인증번호를 전송하였습니다.\n휴대폰에서 인증번호를 확인 해주세요.");

               alert(tel);
               $.ajax({
                   type: "POST",
                   url: "/member/sendSMS1.do",
                   data: {
                       phoneNumber: tel
                   },
                   cache: false,
                   success: function(data) {
                       if (data == "success") {
                           alert("인증번호가 전송되었습니다.");

                           // 인증번호 확인 클릭 이벤트 핸들러 함수 내에서 직접 처리
                           $("#code_check").click(function(e) {
                               e.preventDefault();

                               var enteredCode = $("#phone2").val();
                               if (enteredCode == data) {
                                   alert("인증성공");
                                   $("#phone2").css("border-color", "green");
                                   $("#phone2").attr("disabled", true);
                               } else {
                                   alert("인증실패\n 인증번호를 다시 확인해주세요.");
                                   $("#phone2").css("border-color", "red");
                                   $("#phone2").val("");
                                   $("#phone2").focus();
                               }
                           });
                       } else {
                           alert("휴대폰 번호가 올바르지 않습니다.");
                       }
                   }
               });
           }
       });

    });
</script>
</html>