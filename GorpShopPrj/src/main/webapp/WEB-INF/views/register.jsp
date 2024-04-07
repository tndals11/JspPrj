<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <!-- jquery -->
  <script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
  <script src="/javascript/popup_2.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bar.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
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
    height: 100vh;
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

  #register_form > input[type="submit"] {
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
        <form method="post" action="" id="register_form">
          <input type="text" name="userid" placeholder="이메일">
          <div id="id_check"><p style="color: red; font-size: 13px;">이메일 형식에 맞지않습니다.</p></div>
          <input type="password" name="userpw" placeholder="비밀번호(영문 대소문자/숫자/특수문자중 2가지 이상 조합, 10자~16자)">
          <p id="password_check" style="color: red; font-size: 13px;">비밀번호가 형식에 맞지않습니다.</p>
          <input type="password" name="check_password" placeholder="비밀번호 확인">
          <p id="password_check2" style="color: red; font-size: 13px;">비밀번호가 일치하지 않습니다.</p>
          <input type="text" name="username" placeholder="이름">
          <p id="name_check" style="color: red; font-size: 13px;">이름이 형식에 맞지않습니다.</p>
          <select id="tel1" title="모바일 앞자리">
            <option value="010">010</option>
            <option value="011">011</option>
            <option value="016">016</option>
            <option value="017">017</option>
            <option value="018">018</option>
            <option value="019">019</option>
          </select> -
          <input type='tel' name='phone2' style="width: 32.1%;" maxlength="4" placeholder="휴대전화">-
          <input type='tel' class="mar" name='phone3' style="width: 32.1%;" maxlength="4">
          <input type="text" class="mar" id="postcode" placeholder="우편번호" >
          <input type="button" class="mar" style="cursor: pointer; font-weight: bold;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
          <input type="text" class="mar" id="address" placeholder="주소"><br>
          <input type="text" class="mar" id="detailAddress" placeholder="상세주소">
          <input type="text" class="mar" id="extraAddress" placeholder="참고항목">
          <input type="submit" value="회원가입">
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

</script>
<script src="${pageContext.request.contextPath}/resources/js/popup_2.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>