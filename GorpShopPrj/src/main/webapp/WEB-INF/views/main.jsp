<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>메뉴 바</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
  a {
    text-decoration: none;
  }

  /* 메뉴 바 css */
header {
  width: 100%;
  height: 100%;
  position: fixed;
}

.bar_container {
  background-color: white;
  height: 70px;
  border: 0;
  margin: 0 auto;
  display: flex;
  justify-content: space-between;
  align-items: center;
  font-family: "Roboto", sans-serif;
}

.left_wrap ul {
  display: flex;
  font-size: 16px;
}

.left_wrap ul a {
  margin-left: 30px;
  color: black;
}

.logo_wrap a{
  font-size: 24px;
  color: black;
  font-weight: bold;
}

.right_wrap ul {
  display: flex;
  font-size: 16px;
}

.right_wrap a{
  margin-right: 30px;
  color: black;
}

  /* body img*/
  main {
    height: 100vh;
    background-image: url("${pageContext.request.contextPath}/resources/images/waifu2x_art_noise3_scale.png");
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
  }

  body {
    height: 100%
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

  /* footer */
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
              <a href="/member/login"><li>Login</li></a>
              <a href="#"><li>Cart(0)</li></a>
            </ul>
          </div>
      </div>
    </nav>
  </header>
  <main>
    <div class="main_container">
      <div class="main_content">
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
</html>