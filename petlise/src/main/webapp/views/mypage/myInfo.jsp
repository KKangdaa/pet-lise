<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="/images/favicon.ico" />
    <link rel="apple-touch-icon" href="/images/favicon.ico" />
    <link rel="stylesheet" href="/css/style.css" />
    <link rel="stylesheet" href="/css/mypage/myPageForm.css" />
    <link rel="stylesheet" href="/css/mypage/myInfo.css" />
    <title>Pet LiSe</title>
  </head>
  <body>
    <p class="title">마이페이지</p>

    <div class="container">
      <div id="mypageMenu" class="menu"></div>

      <div class="contentWrap">
        <div class="userInfo">
          <p>회원정보</p>

          <div class="imgBox">
            <div class="userWrap">
              <img
                src=""
                onerror="this.onerror=null; this.src='/images/default-profile.svg';"
              />
              <div class="user">
                <p>홍길동<span>님</span> <a href="#">회원정보변경</a></p>
                <p>kildongHong@gmail.com</p>
                <div class="petInfo">
                  <img src="/images/dog-icon.svg" alt="강아지" />
                  <p>강낭콩 <span>(10살)</span></p>
                </div>
              </div>
            </div>

            <embed src="/images/puppy.svg" alt="강아지" />
          </div>
        </div>

        <div class="info">
          <div class="infoBox">
            <embed src="/images/point-icon.svg" alt="포인트아이콘" />
            <p>포인트</p>
            <p>1000</p>
          </div>
          <div class="infoBox">
            <embed src="/images/gift-icon.svg" alt="상품아이콘" />
            <p>상품 주문 내역</p>
            <p>0</p>
          </div>
          <div class="infoBox">
            <embed src="/images/comment1.svg" alt="상품후기아이콘" />
            <p>상품 후기</p>
            <p>0</p>
          </div>
          <div class="infoBox">
            <embed src="/images/comment2.svg" alt="작성한문의아이콘" />
            <p>작성한 문의</p>
            <p>0</p>
          </div>
          <div class="infoBox">
            <embed src="/images/box-icon.svg" alt="작성한레시피아이콘" />
            <p>작성한 레시피</p>
            <p>0</p>
          </div>
          <div class="infoBox">
            <embed src="/images/comment3.svg" alt="레시피후기아이콘" />
            <p>레시피 후기</p>
            <p>0</p>
          </div>
          <div class="infoBox">
            <embed src="/images/board2-icon.svg" alt="작성한게시글아이콘" />
            <p>작성한 게시글</p>
            <p>0</p>
          </div>
          <div class="infoBox">
            <embed src="/images/keyboard-icon.svg" alt="작성한댓글아이콘" />
            <p>작성한 댓글</p>
            <p>0</p>
          </div>
        </div>
      </div>
    </div>

    <script src="/js/mypageMenu.js"></script>
  </body>
</html>