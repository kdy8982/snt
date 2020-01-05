<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Tiles Template Expression Test..</title>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/history.js/1.8/bundled/html4+html5/dojo.history.js"></script>

<!-- <script src="/js/jquery_history.js" /> -->
<script type="text/javascript">
	$(document).ready(function() {
		var History = window.History;
		console.log(History);
		console.log(History.enabled);
		console.log(History.getState());
		console.log(History.getCurrentIndex())
		
		
		$("#pushState").on("click", function() {
			/** 
			* 브라우저 history 주소목록에 새로운 주소를 추가한다. 
			* 바뀌기 이전의 주소를 없애지 않고 새로운 주소를 추가한다. 
			* 
			* @method history.pushState
			* @param {String} data 주소를 바꾸면서 전달할 value. 
			* @param {String} title 제목
			* @returns {String} 바꿀 url 주소 value. 
			*/
			history.pushState({
				data : 'pushpush'
			}, 'title을 pushState로', '/pushpush');
			
			console.log(History.getCurrentIndex());
		});

		$("#replaceState").on("click", function() {
			/** 
			* 브라우저 history 주소목록에 바꿀 주소를 추가한다. 
			* 현재의 주소를 없애고 바꿀 주소를 추가한다. 기존의 주소에 더이상 접근할 수 없습니다. 
			* 
			* @method history.pushState
			* @param {String} data 주소를 바꾸면서 전달할 value. 
			* @param {String} title 제목
			* @returns {String} 바꿀 url 주소 value. 
			*/
			history.replaceState({
				data : 'replace'
			}, 'title을 replaceState로', '/replace');
		})

		$("#checkState").on("click", function() {	
			console.log(history);
			console.log(window.History.getState());
		})
	})

	window.addEventListener('popstate', function() {
		console.log('popstate', history.state);
		console.log(History.getCurrentIndex());
		$("#state").html(JSON.stringify(history.state));
	});
</script>
</head>
<body>
	<div>

		<div id="state"></div>
		<button id="pushState">pushState</button>
		<button id="replaceState">replaceState</button>
		<button id="checkState">checkState</button>


		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="footer" />
		<tiles:insertAttribute name="menu" />
	</div>
</body>
</html>
