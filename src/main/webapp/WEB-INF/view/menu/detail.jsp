<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="/css/components/menu/card.css" rel="stylesheet" type="text/css">
    <link href="/css/components/menu/menu-filter.css" rel="stylesheet" type="text/css">
    <link href="/css/components/menu/basket-status.css" rel="stylesheet" type="text/css">
    <link href="/css/components/menu/detail.css" rel="stylesheet" type="text/css">
    <link href="/css/components/menu/rcmd-menu-list.css" rel="stylesheet" type="text/css">
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
                    <li><a class="icon icon-person icon-color:base-0" href="">로그인</a></li>
                    <!-- <li><a class="icon icon-sign-out icon-color:base-0" href="">로그아웃</a></li> -->
                </ul>
            </nav>
        </div>
    </header>
    <main>
        <section class="menu-detail">
            <h1 class="d:none">메뉴 상세 정보</h1>
            <section class="menu-block">
                <h1 class="heading-6 mt:4 grid-column:2">${menu.korName}</h1>
                <h2 class="heading-3 color:base-4 mt:1">${menu.engName}</h2>
                <div class="img-block"><img src="/image/menu/product/10.jpg"></div>
                <p class="description-block mt:2 mh:4">
                    알랜드만의 로스팅 기법으로 볶은 원두를 사용하여 
추출된 풍부한 에스프레소와 신선한 우유가 어우러진 대표 라떼
                </p>
                <div class="price-block heading-3 mt:2">${menu.price}</div>
                <form>
                    <fieldset class="size-block">
                        <legend class="heading-3 text-align:left">사이즈</legend>
                        <div>
                            <label><input class="d:none" name="size" type="radio" checked>Small</label>
                            <label><input class="d:none" name="size" type="radio">Large</label>
                        </div>
                    </fieldset>
                    <fieldset class="temp-block">
                        <legend class="heading-3 text-align:left">온도</legend>
                        <div>
                            <label><input class="d:none" name="temp" type="radio">HOT</label>
                            <label><input class="d:none" name="temp" type="radio" checked>ICED</label>
                        </div>
                    </fieldset>
                    <fieldset class="quantity-block">
                        <legend class="d:none">수량</legend>
                        <button class="icon icon-minus-circle" type="submit" name="inc" value="-1">감소</button>
                        <span class="font-weight:bold ml:3">1</span>
                        <input type="hidden" name="qt">
                        <button class="icon icon-plus-circle ml:3" type="submit" name="inc" value="-1">증가</button>
                        <span class="ml:5"><span class="font-weight:bold">4,500</span>원</span>
                    </fieldset>
                    <div class="mv:4 text-align:center">
                        <input class="btn btn-size:2 btn-radius:3 md:btn-radius:0" type="submit" name="cmd" value="담기">
                        <input class="btn btn-main btn-size:2 btn-radius:3 md:btn-radius:0" type="submit" name="cmd" value="주문하기">
                    </div>
                </form>
            </section>
            
        </section>
        <!-- ------------------------------------------------------ -->

        <section class="rcmd-menu-card-list menu-card-list">
            <h1 class="heading-4">함께 추천 드리는 메뉴</h1>
            <class class="content">
                <section class="menu-card soldout">
                    <h1>
                        <a class="heading-3" href="detail?id=1">카페라떼1</a></h1>
                    <h2 class="heading-2 font-weight:normal color:base-5">Cafe Latte</h2>
                    <div class="price-block d:flex align-items:flex-end"><span class="font-weight:bold">4,500</span>원<span class="soldout-msg ml:auto mr:auto md:d:none">SOLD OUT</span></div>
                    <div class="img-block">
                        <a href=""><img src="/image/menu/8.jpg"></a>
                    </div>
                    <div class="like-block d:flex justify-content:flex-end">
                        <a class="icon icon-heart-fill icon-color:base-4" href="">좋아요</a>
                        <span class="font-weight:bold ml:1">2</span>
                    </div>                   
                </section>

                <section class="menu-card">
                    <h1>
                        <a class="heading-3" href="detail?id=1">카페라떼2</a></h1>
                    <h2 class="heading-2 font-weight:normal color:base-5">Cafe Latte</h2>
                    <div class="price-block d:flex align-items:flex-end"><span class="font-weight:bold">4,500</span>원<span class="soldout-msg ml:auto mr:auto md:d:none">SOLD OUT</span></div>
                    <div class="img-block">
                        <a href=""><img src="/image/menu/8.jpg"></a>
                    </div>
                    <div class="like-block d:flex justify-content:flex-end">
                        <a class="icon icon-heart icon-color:base-4" href="">좋아요</a>
                        <span class="font-weight:bold ml:1">2</span>
                    </div>                    
                </section>

                <section class="menu-card">
                    <h1>
                        <a class="heading-3" href="detail?id=1">카페라떼3</a></h1>
                    <h2 class="heading-2 font-weight:normal color:base-5">Cafe Latte</h2>
                    <div class="price-block d:flex align-items:flex-end"><span class="font-weight:bold">4,500</span>원<span class="soldout-msg ml:auto mr:auto md:d:none">SOLD OUT</span></div>
                    <div class="img-block">
                        <a href=""><img src="/image/menu/8.jpg"></a>
                    </div>
                    <div class="like-block d:flex justify-content:flex-end">
                        <a class="icon icon-heart-fill icon-color:base-4" href="">좋아요</a>
                        <span class="font-weight:bold ml:1">2</span>
                    </div>                    
                </section>
            </class>
        </section>
    </main>
    
    <section class="basket-status">
        <h1 class="d:none">Basket Bar</h1>
        <dl class="ph:3">
            <dt>금액</dt>
            <dd class="ml:2">5,000원</dd>
            <dt class="d:none">수량</dt>
            <dd class="ml:auto"><a href="/basket/list" class="icon icon-basket_outline icon-color:base-0 icon-size:4 icon-text-with">1</a></dd>
        </dl>
    </section>
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