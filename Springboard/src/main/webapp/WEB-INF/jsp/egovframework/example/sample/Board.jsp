<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<script type="text/javascript" src="<c:url value='/js/Board.js'/>"></script>
<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board.css'/>" />
<link rel="stylesheet"
	href="  https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">

</head>

<body>

	<header>${member.name} </header>
	<div id="boardinfo-wrap" class="wrap">
		<span>테스트 게시판</span><span>${boardCount}</span>
	</div>
	<div id="search-wrap" class="wrap">
		제목<input type="text"></input> 작성자<input type="text"></input>
		<button>조직도</button>
		부서<input type="text"></input>
		<button>조직도</button>
		작성일<input type="text" name="board_date" id="datepicker1" disabled />~<input
			type="text" name="board_date" id="datepicker2" disabled />
		<button>검색</button>
		<button>초기화</button>
	</div>
	<div id=button-wrap>
		<button id="add_btn">등록</button>
		<button>수정</button>
		<button>삭제</button>
		<button>인쇄</button>
	</div>
	<table id="main-table" class="stripe">
		<thead>
			<tr>
				<th>제목</th>
				<th>부서</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>게시판명</th>
			</tr>
		</thead>
	</table>
	
	<div id="board-register-wrap">
		<div id="board-register">
			<div class="form-group">
				<label>제목</label>
				<input class="register-text" type="text" name="title"></input>
			</div>
			<div class="form-group">
				<label>부서</label>
				<input class="register-text" type="text" name="department"></input>
			</div>
			<div class="form-group">
				<label>작성자</label>
				<input class="register-text" type="text" name="wrtier"></input>
			</div>
			<div class="form-group">
				<label>작성일</label>
				<input class="register-text" type="text" name="write_date"></input>
			</div>
			<div class="form-group">
				<label>내용</label>
				<textarea name="content"></textarea>
			</div>
			<div id="board-register-footer">
				<button id="board-register-submitBtn" class="normal-btn">등록</button>
				<button id="board-register-cancleBtn" class="normal-btn" >취소</button>
			</div>
		</div>
	</div>

</body>

</html>
