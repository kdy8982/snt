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
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/Board.css'/>" />
<link rel="stylesheet" href="  https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">

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
		작성일<input type="text" name="board_date" id="datepicker1" />~<input type="text" name="board_date" id="datepicker2" />
		<button>검색</button>
		<button>초기화</button>
	</div>
	<div id=button-wrap>
		<button>등록</button>
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

</body>

</html>
