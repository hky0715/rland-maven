<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="/css/components/menu/list.css" rel="stylesheet" type="text/css">
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
        <section class="menu-list">
            <h1 class="d:none">메뉴 검색 목록</h1>
            <div>
                <section class="menu-filter">
                    <h1>Rland Menu<span class="d:none">검색</span></h1>
            
                    <nav class="category-filter">
                        <h1 class="d:none">카테고리 검색 메뉴 목록</h1>
                        <ul>
                            <li><a class="sm:deco current md:deco sm:icon-filter_list" href="">전체메뉴</a></li>
                            <li><a class="d:none md:d:inline" href="">커피</a></li>
                            <li><a class="d:none md:d:inline" href="">수제청</a></li>
                            <li><a class="d:none md:d:inline" href="">샌드위치</a></li>
                            <li><a class="d:none md:d:inline" href="">쿠키</a></li>
                        </ul>
                    </nav>
                    <section class="query-filter">
                        <h1 class="d:none">이름 검색 폼</h1>
                        <form>
                            <fieldset>
                                <legend class="d:none">이름 검색</legend>
                                <input type="text" placeholder="메뉴 검색">
                                <button class="icon icon-find">검색</button>
                            </fieldset>
                        </form>
                    </section>
                </section>

                <!-- ------------------------------------------------------ -->

                <section class="menu-card-list">
                    <h1 class="d:none">메뉴 목록</h1>
                    <div class="content">
                    	<c:forEach var="m" items="${list}">
	                        <section class="menu-card">
	                            <h1>
	                                <a class="heading-3" href="detail?id=${m.id}">${m.korName}</a></h1>
	                            <h2 class="heading-2 font-weight:normal color:base-5">${m.engName}</h2>
	                            <div class="price-block d:flex align-items:flex-end"><span class="font-weight:bold">${m.price}</span>원<span class="soldout-msg ml:auto mr:auto md:d:none">SOLD OUT</span></div>
	                            <div class="img-block">
	                                <a href="detail?id=${m.id}"><img src="/image/menu/8.jpg"></a>
	                            </div>
	                            <div class="like-block d:flex justify-content:flex-end">
	                                <a class="icon icon-heart-fill icon-color:base-4" href="">좋아요</a>
	                                <span class="font-weight:bold ml:1">2</span>
	                            </div>
	                            <div class="pay-block d:flex">
	                                <a class="icon md:icon:none icon-cart icon-color:base-0 color:base-0 btn-type:icon btn-cart md:btn-type:text" href="">담기</a>
	                                <a class="icon md:icon:none icon-card icon-color:base-0 color:base-0 btn-type:icon btn-card md:btn-type:text" href="">주문하기</a>
	                            </div>
	                        </section>
						</c:forEach>
                        
                    </div>
                </section>
            </div>
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