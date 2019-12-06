$(document).ready(function() {
	
	/* jQuery DataTable 시작 */
	var table = $("#main-table").DataTable({
		"language" : {
			"paginate" : {
				"next" : "다음", "previous" : "이전"
			}
		},
		displayLength: 10,
		lengthChange : true,
		ajax : {
			type : 'POST',
			dataSrc : 'data',
			url : 'boardList.json',
			dataType : 'JSON'
		},
		columns : [ {
			"data": null, defaultContent: '<input type="checkbox" id="selected" class="select-checkbox" />' 
		},{
			"data" : "boardTitle"
		}, {
			"data" : "departmentName"
		}, {
			"data" : "employeeName"
		}, {
			"data" : "boardCreateDate"
		}, {
			"data" : "boardName"
		}]

	}) //DataTable()
	/* jQueryDataTable 끝 */
	
	/* jQueryUI datepcker : START	 */
	$("#datepicker1").datepicker({
    	dateFormat:'yy-mm-dd',
    	showOn: 'both',
    	buttonImage: 'https://jqueryui.com/resources/demos/datepicker/images/calendar.gif',
    	buttonImageOnly: true,
    	showMonthAfterYear: true,
    	monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    	monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    	dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    	dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토']
    }); // datepikcer();
	
    $("#datepicker2").datepicker({
    	dateFormat:'yy-mm-dd',
    	showOn: 'both',
    	buttonImage: 'https://jqueryui.com/resources/demos/datepicker/images/calendar.gif',
    	buttonImageOnly: true,
    	showMonthAfterYear: true,
    	monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    	monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    	dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    	dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    	onSelect: function(){     
    		var datepicker1 = $('#datepicker1').val();
    	    var datepicker2 = $('#datepicker2').val();
    	    var date1 = datepicker1.split('-');
    	    var date2 = datepicker2.split('-');
    	    var board_date1 = new Date(date1[0],date1[1],date1[2]);
    	    var board_date2 = new Date(date2[0],date2[1],date2[2]);
            if(board_date1.getTime()>board_date2.getTime()){
            	$('#datepicker2').val(null);
            	alert('지정한 날짜가 맞지 않습니다. 다시 선택 해 주세요.');
            }
    	}
    });
    /* jQueryUI datepcker : END */
	

	/* 게시글 등록 : START */
	$("#add-btn").on("click", function() {
		$("#board-register-wrap").css("display", "block");	
		$("#board-register-footer").css("display", "block");
	});
	$(document).on("click", "#board-register-cancleBtn", function() {
		$("#board-register-wrap").css("display", "none");
		$("#board-register-footer").css("display", "none")
		$("#board-select-footer").css("display", "none")
	})
	
	$("#board-register-submitBtn").on("click" , function() {
		var modalInputTitle = $("input[name='title']").val();
		var modalInputWriter = $("input[name='writer']").val();
		var modalInputContent = $("textarea[name='content']").val();
		var modalInputDeptCode = $("input[name='deptCode']").val();
		var modalInputWriterCode = $("input[name='empCode']").val();
		
		var board = {
				board_title : modalInputTitle,
				employee_name : modalInputWriter,
				board_content : modalInputContent,
				department_id : modalInputDeptCode,
				employee_id : modalInputWriterCode
		};
		
		boardService.insert(board, function(result, status) {
			if(status="success") {
				alert(result);
				$("input[name='title']").val("");
				$("textarea[name='content']").val(""); 
				$("#board-register-wrap").css("display", "none");
			}
		}) 
	})
	/* 게시글 등록 : END */
	
	/* 체크박스 선택 : START */
	var _imsiArr= []; // 중복배열 제거를 위한 임시 배열
	var _chkArr = []; // 체크된 row를 관리하는 배열
	
	$('#main-table tbody').on('click', 'tr input[type="checkbox"]', function () {
	    var thisRow = $(this).parents("tr")
	    console.log(table.row(thisRow).data()); // 선택된 로우의 데이터를 출력한다.
	    var thisRowId= table.row(thisRow).data().boardId;
	    
	    // 체크가 있는지 여부
	    if(_chkArr.indexOf(thisRowId) == -1) {
	    	_imsiArr.push(thisRowId);
	    	$.each(_imsiArr, function(i, el){
	    		if($.inArray(el, _chkArr) === -1) _chkArr.push(el);
	    	});
	    } else {
	    	var idxChk = _chkArr.indexOf(thisRowId);
	    	if (idxChk > -1) _chkArr.splice(idxChk, 1);
	    	
	    	var idxImsi = _imsiArr.indexOf(thisRowId);
	    	if(idxImsi > -1) _imsiArr.splice(idxImsi, 1);
	    }
	    console.log(_chkArr);
	});
	
	/* 체크박스 선택 : END */
	
	/* 게시글 조회 : START */
	$('#main-table tbody').on( 'click', 'tr td:nth-child(2)', function () {
		var thisRow = $(this).parents("tr");
		var boardId = table.row(thisRow).data().boardId;
		var board = {
				board_id : boardId
		}
		boardService.selectBoard(board,function(result, status) {
	    	if(status="success") {
	    		$("#board-register-wrap").css("display", "block");
	    		$("#board-select-footer").css("display", "block");
	    		$("input[name='title']").val(result.board_title);
	    		$("input[name='department']").val(result.department_name);
	    		$("input[name='writer']").val(result.employee_name);
	    		$("textarea[name='content']").val(result.board_content);
	    	}
	    });
		
	} );
	
	/* 게시글 삭제 : START */
	/* 게시글 삭제 : END */

	
	/* 게시글 수정 : START  TODO : 체크박스 배열 갯수가 한개인지 검증하는 로직 추가해야 함.*/ 
	$("#mod-btn").on("click", function() {
		if(_chkArr.length > 1) {
			alert("하나의 글만 수정할 수 있습니다.");
			$("input[type='checkbox']").prop("checked", false);
			
			return;
		} else if (_chkArr.length == 0){
			alert("수정하실 게시물을 체크해 주세요.");
			return;
		}
		$("#board-register-wrap").css("display", "block");	
		$("#board-modify-footer").css("display", "block");
		
		// 글을 다시 조회하여 출력한다.
		var boardId = _chkArr[0];
		var board = {
			board_id : boardId
		}
		boardService.selectBoard(board, function(result, status) {
	    	if(status="success") {
	    		$("input[name='title']").val(result.board_title);
	    		$("input[name='department']").val(result.department_name);
	    		$("input[name='writer']").val(result.employee_name);
	    		$("textarea[name='content']").val(result.board_content);
	    	}
	    });
		
		
	});
	// 취소버튼
	$(document).on("click", "#board-register-cancleBtn", function() {
		$("#board-register-wrap").css("display", "none");
		$("#board-register-footer").css("display", "none");
		$("#board-select-footer").css("display", "none");
	})
	//수정버튼
	$("#board-modify-submitBtn").on("click" , function() {
		var modalInputTitle = $("input[name='title']").val();
		var modalInputWriter = $("input[name='writer']").val();
		var modalInputContent = $("textarea[name='content']").val();
		var modalInputDeptCode = $("input[name='deptCode']").val();
		var modalInputWriterCode = $("input[name='empCode']").val();
		
		var board = {
				board_title : modalInputTitle,
				employee_name : modalInputWriter,
				board_content : modalInputContent,
				department_id : modalInputDeptCode,
				employee_id : modalInputWriterCode
		};
		
		console.log(board);
		boardService.updateBoard(board, function(result, status) {
			if(status="success") {
				alert(result);
				$("input[name='title']").val("");
				$("textarea[name='content']").val(""); 
				$("#board-register-wrap").css("display", "none");
			}
		}) 
	})
	
	/* 게시글 수정 : END */
})