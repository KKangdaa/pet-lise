<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
  // 서버 사이드 코드에서 세션에서 user_id 값을 가져옵니다.
  String user_id = (String) session.getAttribute("user_id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/board/boardDetail.css">
<link rel="stylesheet" href="/css/board/modal.css">
<link rel="stylesheet" href="/css/style.css" />
<link rel="stylesheet" href="/css/nav/nav.css" />
<link rel="stylesheet" href="/views/board/cogi/cogi.css" />
<title>자유게시판 상세페이지</title>
<script src="/js/jquery-3.6.4.min.js"></script>
</head>

<body>
  <header>
    <div id="nav">
      <script src="/js/recipe/nav.js"></script>
    </div>
  </header>
  <div class="board_title">
    <a href="/boardMain">자유게시판</a> 
  <div class="containers">
    <div class="contents">
      <div class="detail_title">${boardInfo.board_title}</div>
      <div class="detail_info">
        <div class="detail_writer">작성자 : ${boardInfo.user.name}</div>
        <div class="detail_date"><fmt:formatDate value="${boardInfo.board_created}" pattern="yyyy-MM-dd H:mm" /></div>
        <div class="detail_view">
          조회수 ${boardInfo.board_view}
        </div>	
        <div class="detail_like">♥<%-- ${boardInfo.like_count} --%></div>
      </div>
<div id=UD>
  <div class="post_actions" id="postActions" style=" display:none;" >
  <a class="editButton" id="editButton" href="/getUpdateboard?seq=${boardInfo.seq}">수정</a>
  <button class="deleteButton" id="deleteButton" data-placeid="${boardInfo.seq}" 
  onclick="clickModal(event)">삭제</button></div>
<div id="modal" ></div>
</div>


      
          <%@ include file="./cogi/cogi.html"%>
        
   <div class="detail_content">
  ${boardInfo.board_contents}
  
  
  
</div>

<div>
 <div class="post_like">
          <button><img src="/images/recipe/heart.svg">좋아요</button>
        </div>
      </div>
  </div>


  <div class="board_body_inside">    
        
        <div id="cmtPosition" >
          <div class="comment_header_bar">
            <span>댓글</span>
            <span class="comment_num">5</span>
            <img src="/images/recipe/reply.svg">
          </div>
        </div>



 <!-- 댓글작성 -->
  <div class="cmt_write_input">
    <img src="/images/recipe/profile.svg">
    <textarea class="cmt_textarea" id="comment-input" placeholder="이 곳에 댓글 내용을 입력해주세요." oninput="countCharacters()"></textarea>
    <div class="character-count" id="characterCount">0/1000</div>
  </div>
  <div class="cmt_write_input_bottom">
    <div class="cmt_actions">
      
      <button type="submit" id="sticker"><img src="/images/recipe/sticker.svg">스티커</button>
      <button type="submit" id="picture"><img src="/images/recipe/picture.svg">사진</button>
      <button type="submit" id="submitButton">등록</button>
    </div>
  </div>
  

      <!-- 댓글리스트 -->
<ul id="comment-list"></ul>

<!--더미댓글-->
<div class="fdb_lst_ul">
  <li class="new-comment">
    <div class="cmt_line">
      <div class="cmt_info">
        <div class="user_profile">
          <img src="/images/recipe/profile.svg">
        </div>
        <div class="cmt_left">
          <span class="cmt_nick">깜둥</span>
          <span class="cmt_date">2023-07-05 09:01:21</span>
          <button class="reply_edit">수정</button>
          <button class="reply_delete">삭제</button>
        </div>
        <div class="cmt_right">
          <button class="re_reply">
            <img src="/images/recipe/reply.svg">댓글</button>
          <button class="like_reply">
            <img src="/images/recipe/heart.svg">좋아요</button><span></span>
          <button class="siren_reply">
            <img src="/images/recipe/siren.svg" class="icon_siren">신고</button>
        </div>
      </div>
      <div class="cmt_bottom">
      \
      <div class="first_cmt_na">댓글 내용입니다..</div>
      </div>
    </div>
  </li>
</div>



<!--대댓글-->
<div class="fdb_lst_ul">
  <li class="re-comment">
    <div class="cmt_line_re">
      <div class="cmt_info_re">
        <img src="/images/recipe/re.svg">  
        <div class="user_profile">
          <img src="/images/recipe/profile.svg">
        </div>
        <div class="cmt_left">
          <span class="cmt_nick">자몽</span>
          <span class="cmt_date">2023-07-05</span>
          <button class="reply_edit">수정</button>
          <button class="reply_delete">삭제</button>
        </div>
        <div class="cmt_right">
          <button class="like_reply">
            <img src="/images/recipe/heart_hit.svg">좋아요</button><span>3</span>
          <button class="siren_reply">
            <img src="/images/recipe/siren.svg" class="icon_siren">신고</button>
        </div>
      </div>
      <div class="cmt_bottom_re">
      <div class="first_cmt_na">대댓글입니다. .</div>
      </div>
    </div>
  </li>
</div>

</div>
      
 </div>     
    




  <script src="/js/board/DeleteBoard.js"></script>
  
 <script>
    // user_id 값을 JavaScript로 가져와서 변수에 할당합니다.
    var user_id = '<%= user_id %>';

   

    // 페이지 로드 시 바로 실행되는 함수
    window.onload = function() {
      // user_id와 boardInfo.user_id를 비교하여 같으면 보이게, 다르면 숨기기
      if (user_id == '${boardInfo.user_id}') {
        document.getElementById("postActions").style.display = "block";
      } else {
        document.getElementById("postActions").style.display = "none";
      }
    };
  </script>

</body>
</html>