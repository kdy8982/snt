$(document).ready(function() {
	
	/* jQuery DataTable 시작 */
	var table = $("#main-table").DataTable({
		"language" : {
			"paginate" : {
				"first" : "<<",
				"previous" : "<",
				"next" : ">",
				"last" : ">>"
			}
		},
		"pagingType": "full_numbers",
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
		}],
		//order: [ [ 4, "desc" ] ],
        "aoColumnDefs" : [ {
            'bSortable' : false,
            'aTargets' : [ 0,2,3,5 ]
        } ]

	}) //DataTable()
	/* jQueryDataTable 끝 */
	
	/*jsTree 시작*/
	$.ajax({
		type: 'post',
		dataType: 'json',
		//async: false,
		url: '/treeList.json',
		success: function(data,textStatus){
			var a = '<ul>';
			for(var m=1; m<data.length; m++){
				if(data[m-1].department_name!=data[m].department_name){	
					a += '<li>'+data[m-1].department_name+'<ul>';
					for(var n=0; n<data.length; n++){
						if(data[m-1].department_name==data[n].department_name){
							a += '<li>'+data[n].employee_name+'</li>';
						}
					}
					a += '</ul></li>';
				}
			}
			a += '</ul>';
			$('#tree').append(a);
			$('#tree, #treeBox').hide();
		},
		error: function(data,textStatus){
			alert('에러발생');
		}
	});
	
	var btn;
	$('.tree-btn').click(function(){
		btn = $(this).attr('id');
		$('#tree').jstree({
        	'plugins' : [ 'wholerow' ]
        });
		$('#tree, #treeBox').toggle();
	});
	
	var text;
	var level;
	$('#tree').on('changed.jstree', function (e, data) {
		var id = $('#tree').jstree(true).get_node(data.selected).id; //선택한 노드의 id 구하기
		level = $('#'+id).attr('aria-level'); //선택한 노드의 id를 이용해 노드의 레벨 구하기
		text = $('#tree').jstree(true).get_node(data.selected).text; //선택한 노드의 텍스트 구하기
      
		if(btn=='dept-btn'&&level==1){  //노드 레벨 1은 부서명
			$('#department').val(text);
		} else if(btn=='writer-btn'&&level==2){  //노드 레벨 2는 사원명
			$('#writer').val(text);
		}
	}).dblclick(function() {
		var ok;
		if(btn=='dept-btn'&&level==1) {
			ok = confirm("'"+text+"' 부서를 선택하시겠습니까?");
		} else if(btn=='writer-btn'&&level==2){
			ok = confirm("'"+text+"' 님을 선택하시겠습니까?");
		}
		if(ok==true){
			$('#tree').jstree('close_all');
			$('#tree, #treeBox').hide();
		}
	});
	/*jsTree 끝*/
	
	/* jQueryUI datepicker : START	 */
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
    	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    	onSelect: function(){     
    		var datepicker1 = $('#datepicker1').val();
    	    var datepicker2 = $('#datepicker2').val();
    	    var date1 = datepicker1.split('-');
    	    var date2 = datepicker2.split('-');
    	    var board_date1 = new Date(date1[0],date1[1],date1[2]);
    	    var board_date2 = new Date(date2[0],date2[1],date2[2]);
            if(board_date1.getTime()>board_date2.getTime()){
            	$('#datepicker1').val(null);
            	alert('지정한 날짜가 맞지 않습니다. 다시 선택 해 주세요.');
            }
    	}
    });
	
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
    /* jQueryUI datepicker : END */
	
    
    // 초기화버튼
    $('#reset').on('click', function(){
		$("#title").val(""); // data[1]
		$("#department").val(""); // data[2]
		$("#writer").val(""); // data[3]
		$("#datepicker1").val(""); // data[4] "" or 2019-12-04 
		$("#datepicker2").val(""); // data[4] "" or 2019-12-04
    	table.ajax.reload( null, false );
        //location.replace('/boardList.do');
     });
    // 조회 모달 확인버튼. 
    $(document).on("click", "#board-select-cancleBtn", function() {
    	$("#modal-wrapper").css("display", "none");
    	$(".modal-select-wrap").css("display", "none");
    	$(".modal-wrap").removeClass("modal-select");
    	$("input[name='title']").val("");
    	$("div[name='content']").empty();
    	
    })
    //등록 모달 취소버튼.
    $(document).on("click", "#board-register-cancleBtn", function() {
    	$("#modal-wrapper").css("display", "none");
    	$(".modal-regist-wrap").css("display", "none");
    	$("#content iframe").remove();
    	$(".modal-regist-wrap").removeClass("modal-regist");
    })
    //수정 모달 취소버튼.
    $(document).on("click", "#board-modify-cancleBtn", function() {
    	$("#modal-wrapper").css("display", "none");
    	$(".modal-modify-wrap").css("display", "none");
    	$(".modal-wrap").removeClass("modal-modify");
    	$("input[name='title']").val("");
    	$("#content iframe").remove();
    })
    
	var oEditors = []; // 스마트에디터 배열 객체 
	/* 게시글 등록 : START */
	$("#add-btn").on("click", function() {
		$("#modal-wrapper").css("display", "block");
		$(".modal-regist-wrap").css("display", "block");	
		$("#board-register-footer").css("display", "block");
	
		nhn.husky.EZCreator.createInIFrame({
			oAppRef: oEditors,
			elPlaceHolder: "ir1",
			sSkinURI: "/SE2/SmartEditor2Skin.html",
			fCreator: "createSEditor2"
		});
		
	});
	$("#board-register-submitBtn").on("click" , function() {
		var modalInputTitle = $(".modal-regist-wrap input[name='title']").val();
		var modalInputWriter = $(".modal-regist-wrap input[name='writer']").val();
		var modalInputContent = oEditors.getById["ir1"].getIR();
		var modalInputDeptCode = $(".modal-regist-wrap input[name='deptCode']").val();
		var modalInputWriterCode = $(".modal-regist-wrap input[name='empCode']").val();

		if(modalInputTitle == "") {
			alert("제목을 입력해주세요.");
			return;
		}
		
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
				$(".modal-regist-wrap input[name='title']").val("");
				$("textarea[name='content']").val("");
				$("#content iframe").remove();
				$(".modal-regist-wrap").css("display", "none");
				$("#modal-wrapper").css("display", "none");
				table.ajax.reload( null, false );
				
				boardService.selectBoardCount(function (result, status) { // 전체 글 갯수 다시 조회한다. 
					$("#boardcnt").text(result);
				})
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
	//체크박스 초기화 메서드
	var checkBoxReset = function() {
		console.log("checkBoxReset Method call..");
		_imsiArr= []; // 중복배열 제거를 위한 임시 배열 초기화
		_chkArr = []; // 체크된 row를 관리하는 배열 초기화
		$("input[type='checkbox']").prop("checked", false); // checkbox ui 모두 초기화
	}
	
	/* 체크박스 선택 : END */
	
	/* 게시글 조회 : START */
	$('#main-table tbody').on( 'click', 'tr td:nth-child(2)', function () {
		var thisRow = $(this).parents("tr");
		var boardId = table.row(thisRow).data().boardId;
		var board = {
				board_id : boardId
		}
		boardService.selectBoard(board,function(result, status) {
			console.log(result);
	    	if(status="success") {
	    		$("#modal-wrapper").css("display", "block");
	    		$(".modal-select-wrap").css("display", "block");
	    		$(".modal-wrap").addClass("modal-select");
	    		$(".modal-select input,textarea").attr("readonly", true);
	    		
	    		$("#board-select-footer").css("display", "block");
	    		$(".modal-select-wrap input[name='title']").val(result.board_title);
	    		$(".modal-select-wrap input[name='department']").val(result.department_name);
	    		$(".modal-select-wrap input[name='writer']").val(result.employee_name);
	    		$("div[name='content']").append(result.board_content);
	    	}
	    });
		
	} );
	
	/* 게시글 삭제 : START */
	$('#del-btn').on('click', function(){
		if(_chkArr.length == 0){
			alert('선택해주세요');
		}else {
			var board = _chkArr;
			boardService.remove(board, function(result, status){
				if(status="success") {
					alert(result)
					table.ajax.reload( null, false );
					checkBoxReset();
					boardService.selectBoardCount(function (result, status) { // 전체 글 갯수 다시 조회한다. 
						$("#boardcnt").text(result);
					})
				}
			})
		}
	})
	/* 게시글 삭제 : END */

	/* 게시글 수정 : START */
	$("#mod-btn").on("click", function() {
		if(_chkArr.length > 1) {
			alert("하나의 글만 수정할 수 있습니다.");
			checkBoxReset();
			return;
		} else if (_chkArr.length == 0){
			alert("수정하실 게시물을 체크해 주세요.");
			return;
		}
		$("#modal-wrapper").css("display", "block");
		$(".modal-modify-wrap").css("display", "block");
		$(".modal-register input, textarea").attr("readonly", false);
		
		nhn.husky.EZCreator.createInIFrame({
			oAppRef: oEditors,
			elPlaceHolder: "ir2",
			sSkinURI: "/SE2/SmartEditor2Skin.html",
			fCreator: "createSEditor2"
		});

		// 글을 다시 조회하여 출력한다.
		var boardId = _chkArr[0];
		var board = {
			board_id : boardId
		}
		
		boardService.selectBoard(board, function(result, status) {
			console.log(result)
	    	if(status="success") {
	    		$(".modal-modify-wrap input[name='title']").val(result.board_title);
	    		$(".modal-modify-wrap input[name='department']").val(result.department_name);
	    		$(".modal-modify-wrap input[name='writer']").val(result.employee_name);
	    		$(".modal-modify-wrap input[name='boardCode']").val(result.board_id);
	    		//$("div[name='content']").append(result.board_content);
	    		
	    		setTimeout(function() {
	    			oEditors.getById["ir2"].exec("SET_IR", [""]); //내용초기화
	    			oEditors.getById["ir2"].exec("PASTE_HTML", [result.board_content]); //내용밀어넣기
	    		}, 500);
	    		
	    		checkBoxReset();
	    	}
	    });
	});
	
	//수정버튼
	$("#board-modify-submitBtn").on("click" , function() {
		var modalInputTitle = $(".modal-modify-wrap input[name='title']").val();
		var modalInputWriter = $(".modal-modify-wrap input[name='writer']").val();
		var modalInputContent = oEditors.getById["ir2"].getIR();
		var modalInputDeptCode = $(".modal-modify-wrap input[name='deptCode']").val();
		var modalInputWriterCode = $(".modal-modify-wrap input[name='empCode']").val();
		var modalInputBoardCode = $(".modal-modify-wrap input[name='boardCode']").val();
		
		var board = {
				board_title : modalInputTitle,
				employee_name : modalInputWriter,
				board_content : modalInputContent,
				department_id : modalInputDeptCode,
				employee_id : modalInputWriterCode,
				board_id : modalInputBoardCode
		};
		
		boardService.updateBoard(board, function(result, status) {
			if(status="success") {
				$("#modal-wrapper").css("display", "none");
				alert(result);
				$(".modal-modify-wrap input[name='title']").val("");
				$(".modal-modify-wrap input[name='writer']").val("");
				$("textarea[name='content']").val(""); 
				$(".modal-modify-wrap").css("display", "none");
				$("#content iframe").remove();
				table.ajax.reload( null, false );
			}
		}) 
	})
	/* 게시글 수정 : END */
	

	
	/* 게시글 검색 : START */
	$.fn.dataTable.ext.search.push(
		function( settings, data, dataIndex ) {
			var title = $("#title").val(); // data[1]
			var department = $("#department").val(); // data[2]
			var writer = $("#writer").val(); // data[3]
			var dp1 = $("#datepicker1").val(); // data[4] "" or 2019-12-04 
			var dp2= $("#datepicker2").val(); // data[4] "" or 2019-12-04 
			
			if(dp1 == "") {
				dp1 = "0";
			}
			if(dp2 == "") {
				dp2 = "999999";
			}
	    	if((data[1].indexOf(title) != -1) && (data[2].indexOf(department) != -1) && (data[3].indexOf(writer) != -1) && (dp1 <= data[4]) && (dp2 >= data[4]) ) {
	    		return true;
	    	} else {
	    		return false;
	    	} 
		}
	);
	
	$("#searchdata").on("click", function() {
		var title = $("#title").val(); // data[1]
		var department = $("#department").val(); // data[2]
		var writer = $("#writer").val(); // data[3]
		var dp1 = $("#datepicker1").val(); // data[4] "" or 2019-12-04 
		var dp2= $("#datepicker2").val(); // data[4] "" or 2019-12-04
		console.log(title)
		console.log(department)
		console.log(writer)
		console.log(dp1)
		console.log(dp2)
		if(title == "" && department =="" && writer == "" && dp1 == "" && dp2 == "") {
			alert("검색할 내용을 입력해주세요.")
			return;
		}
  		table.draw();
	})
	/* 게시글 검색 : END */
	
}) // $(document).ready(function() {
