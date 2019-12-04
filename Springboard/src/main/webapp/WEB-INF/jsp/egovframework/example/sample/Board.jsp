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
<script type="text/javascript" src="Board.js"></script>
<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<link rel="stylesheet" type="text/css" href="Board.css" />
<link rel="stylesheet"
	href="  https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" />


</head>

<body>

	<header> </header>
	<div id="boardinfo-wrap" class="wrap">
		<span>테스트 게시판</span><span>13</span>
	</div>
	<div id="search-wrap" class="wrap">
		제목<input type="text"></input> 작성자<input type="text"></input>
		<button>조직도</button>
		부서<input type="text"></input>
		<button>조직도</button>
		작성일<input type="text"></input> ~ <input type="text"></input>
		<button>검색</button>
		<button>초기화</button>
	</div>
	<div id=button-wrap>
		<button>등록</button>
		<button>수정</button>
		<button>삭제</button>
		<button>인쇄</button>
	</div>
	<table id="main-table" class="display">
		<thead>
			<tr>
				<th>제목</th>
				<th>부서</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>게시판명</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Row 1 Data 1</td>
				<td>Row 1 Data 2</td>
			</tr>
			<tr>
				<td>Row 2 Data 1</td>
				<td>Row 2 Data 2</td>
			</tr>
		</tbody>
	</table>

</body>

</html>
