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
<script type="text/javascript" src="<c:url value='/js/BoardService.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/Board.js'/>"></script>
<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board.css'/>" />
<link rel="stylesheet"
	href="  https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" 
	href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />

</head>

<body>
<div id="container">
	<header>${member.name} </header>
	<div id="boardinfo-wrap" class="wrap">
		<span>테스트 게시판</span><span id=boardcnt>${boardCount}</span>
	</div>
	<div id="search-wrap" class="wrap">
		<div class="form-group">
			<label for="title">제목</label>
			<input type="text" id="title" class="input_title"></input> 
		</div>	
		<div class="form-group">
			<label for="writer">작성자</label>
			<input type="text" id="writer" class="input_writer" disabled="disabled"></input>
			<button class="organization_chart btn gray-btn tree-btn" id="writer-btn">조직도</button>
			
			<label id="department2" for="department">부서</label>
			<input type="text" id="department" class="input_department" disabled="disabled"></input>
			<button class="organization_chart btn gray-btn tree-btn" id="dept-btn">조직도</button>
			<div id="treeBox">
				<div id="tree"></div> <!-- modal 할 줄 아시는 분 도움 부탁드려요 -->
			</div>
		</div>
		<div class="form-group">
			<label id="writedate" for="department">작성일</label>
			<input type="text" name="board_date" id="datepicker1" class="input_date_created1" disabled="disabled" />~
			<input type="text" name="board_date" id="datepicker2" class="input_date_created2" disabled="disabled"/>
		</div>
		
		<div id="search_button">
			<button class="btn gray-btn">검색</button>
			<button class="btn gray-btn">초기화</button>
		</div>
	</div>
	<div id=button-wrap>
		<button id="add-btn" class="btn pink-btn">등록</button>
		<button id="mod-btn" class="btn pink-btn">수정</button>
		<button id="del-btn" class="btn pink-btn">삭제</button>
		<button class="btn pink-btn">인쇄</button>
	</div>
	<table id="main-table" class="stripe">
		<thead>
			<tr>
				<th></th>
				<th>제목</th>
				<th>부서</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>게시판명</th>
			</tr>
		</thead>
	</table>

	<div class="modal-wrap">
		<div class="modal-inner">
			<div class="form-group">
				<label>제목</label> <input class="register-text" type="text"
					name="title"></input>
			</div>
			<div class="form-group">
				<label>부서</label> <input class="register-text" type="text"
					name="department" value="기술연구소" disabled></input>
			</div>
			<div class="form-group">
				<label>작성자</label> <input class="register-text" type="text"
					name="writer" value="김대연" disabled></input>
			</div>
			<div class="form-group">
				<label>내용</label>
				<textarea name="content"></textarea>
			</div>
			<div class="form-group hidden">
				<label>부서코드</label>
				<input type="text" name="deptCode" value="5"></input>
			</div>
			<div class="form-group hidden">
				<label>직원코드</label>
				<input type="text" name="empCode" value="17"></input>
			</div>
			<div class="form-group hidden">
				<label>게시물코드</label>
				<input type="text" name="boardCode"></input>
			</div>
			
			<div id="board-modify-footer" class="modal-modify">
				<button id="board-modify-submitBtn" class="btn gray-btn">수정</button>
				<button id="board-register-cancleBtn" class="btn gray-btn">취소</button>
			</div>
			<div id="board-register-footer" class="modal-register">
				<button id="board-register-submitBtn" class="btn gray-btn">등록</button>
				<button id="board-register-cancleBtn" class="btn gray-btn">취소</button>
			</div>
			<div id="board-select-footer" class="modal-select">
				<button id="board-select-cancleBtn" class="btn gray-btn">확인</button>
			</div>
		</div>
	</div>
</div>
</body>

</html>
