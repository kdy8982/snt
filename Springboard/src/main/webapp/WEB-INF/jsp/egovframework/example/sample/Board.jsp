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
<script type="text/javascript" src="/js/BoardService.js"></script>
<script type="text/javascript" src="<c:url value='/js/Board.js'/>"></script>
<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="/SE2/js/service/HuskyEZCreator.js" charset="utf-8"></script>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/board.css'/>" />
<link rel="stylesheet"
	href="  https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">

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
			<label for="writer">작성자</label><input
			type="text" id="writer" class="input_writer"></input>
			<button class="organization_chart btn gray-btn">조직도</button>
			
			<label id="department2" for="department">부서</label>
			<input type="text" id="department" class="input_department"></input>
			<button class="organization_chart btn gray-btn">조직도</button>
		</div>
		<div class="form-group">
			<label id="writedate" for="department">작성일</label><input type="text" name="board_date" id="datepicker1" class="input_date_created1" disabled />~<input type="text" name="board_date" id="datepicker2" class="input_date_created2" disabled/>
		</div>
		
		<div id="search_button">
			<button class="btn gray-btn">검색</button>
			<button class="btn gray-btn">초기화</button>
		</div>
	</div>
	<div id=button-wrap>
		<button id="add-btn" class="btn pink-btn">등록!</button>
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
	
	<div class="modal-select-wrap">
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
				<div name="content"></div>
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
			
			<div id="board-select-footer" class="modal-select">
				<button id="board-select-cancleBtn" class="btn gray-btn">확인</button>
			</div>
		</div>
	</div>
	
	<div class="modal-regist-wrap">
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
			<div id="content" class="form-group">
				<label>내용</label>
				<textarea name="ir1" id="ir1" rows="3" cols="30">
					에디터에 기본으로 삽입할 글(수정 모드)이 없다면 이 value 값을 지정하지 않으시면 됩니다.
				</textarea>
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
				<button id="board-modify-cancleBtn" class="btn gray-btn">취소</button>
			</div>
			<div id="board-register-footer">
				<button id="board-register-submitBtn" class="btn gray-btn">등록</button>
				<button id="board-register-cancleBtn" class="btn gray-btn">취소</button>
			</div>
		</div>
	</div>
	
	
	<div class="modal-modify-wrap">
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
			<div id="content" class="form-group">
				<label>내용</label>
				<textarea name="ir2" id="ir2" rows="3" cols="30">
				
				</textarea>
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
				<button id="board-modify-cancleBtn" class="btn gray-btn">취소</button>
			</div>
		</div>
	</div>
	<!-- 
	<form action="SE_submit.do" method="post" id="frm">
		<textarea name="ir1" id="ir1" rows="10" cols="100">
			에디터에 기본으로 삽입할 글(수정 모드)이 없다면 이 value 값을 지정하지 않으시면 됩니다.
		</textarea>
		<input type="button" id="savebutton" value="서버전송" />
	</form>
	 -->
</div>
</body>
<script type="text/javascript">
	/* 
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "ir1",
		sSkinURI: "/SE2/SmartEditor2Skin.html",
		fCreator: "createSEditor2"
	});
	
	// ‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다..
	function submitContents(elClickedObj) {
		 // 에디터의 내용이 textarea에 적용된다.
		 oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
	
		 // 에디터의 내용에 대한 값 검증은 이곳에서
		 // document.getElementById("ir1").value를 이용해서 처리한다.
		 try {
		     elClickedObj.form.submit();
		 } catch(e) {
			 console.log(e);
		 }	
	}

	$("#savebutton").on('click', function () {
        //id가 smarteditor인 textarea에 에디터에서 대입
        oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
        var data = oEditors.getById["ir1"].getIR();
        console.log(data);
        return;
        //폼 submit
        $("#frm").submit(); // 네이버 에디터 감싸고 있는 , div
	})
	 */
</script>
</html>
