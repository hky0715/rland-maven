<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="/css/reset.css" rel="stylesheet" type="text/css">
    <link href="/css/root.css" rel="stylesheet" type="text/css">
    <link href="/css/style.css" rel="stylesheet" type="text/css">
    <link href="/css/icon.css" rel="stylesheet" type="text/css">
    <link href="/css/button.css" rel="stylesheet" type="text/css">
	<link href="/css/heading.css" rel="stylesheet" type="text/css">
    <link href="/css/util/content.css" rel="stylesheet" type="text/css">
    <link href="/css/util/box.css" rel="stylesheet" type="text/css">
    <link href="/css/util/layout.css" rel="stylesheet" type="text/css">
    <link href="/css/util/form.css" rel="stylesheet" type="text/css">    
    <link href="/css/components/header.css" rel="stylesheet" type="text/css">
    <link href="/css/components/user/login.css" rel="stylesheet" type="text/css">
    <link href="/css/components/footer.css" rel="stylesheet" type="text/css">
</head>
<body>
    <header class="header md:header">
        <div class="content-box">
            <h1><a href="/index.html">Rland</a></h1>
            <nav class="main-menu">
                <ul class="md:d:none ">
                    <li><a class="icon icon-menu md:icon-size:3 icon-color:base-0" href="">메뉴</a></li>
                </ul>
                <ul class="d:none md:d:flex">
                    <li><a class="icon icon-cart icon-color:base-0" href="">장바구니</a></li>
                    <li><a class="icon icon-alert icon-color:base-0 icon-count-with" href="">알림<span>2</span></a></li>
                    <li><a class="icon icon-person icon-color:base-0" href="/user/login.html">로그인</a></li>
                    <!-- <li><a class="icon icon-sign-out icon-color:base-0" href="">로그아웃</a></li> -->
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <section class="login-form">
            <h1 class="heading-7 text-align:center">Rland Login</h1>
            <form>
                <fieldset>
                    <legend class="d:none">인증정보</legend>
                    <label class="d:none">아이디</label>
                    <input type="text" placeholder="아이디">
                    <label class="d:none">비밀번호</label>
                    <input class="mt:3" type="password" placeholder="비밀번호">
                </fieldset>
                <div class="mt:5">
                    <button class="btn btn-main w:1" type="submit">로그인</button>
                    <span class="w:1 d:inline-flex justify-content:center mt:3">또는</span>
                    <a class="btn w:1 mt:3 al" href="">
                        <span class="deco icon-google icon-size:3 w:1 d:inline-flex justify-content:center">구글 로그인</span></a>
                </div>
                <div class="mt:3 d:flex justify-content:center">
                    <a href="">회원가입</a>
                    <a href="" class="bl:1 bc:base-6 bls:solid ml:3 pl:3">비밀번호 찾기</a>
                </div>
            </form>
        </section>
    </main>
    
    <footer class="footer">
        <section>
            <h1 class="d:none">알랜드 회사정보</h1>
            <dl>            
                <dt class="">사업자 등록정보</dt>
                <dd>123-45-67</dd>
            
                <dt class="d:none">저작권</dt>
                <dd class="colspan:2">ⓒ2023 rland.co.kr All Rights Reserved</dd>                
            </dl>            
        </section>
    </footer>
</body>
</html>