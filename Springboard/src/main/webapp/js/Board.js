$(document).ready(function() {
	
	/* jQuery DataTable 시작 */
	$("#main-table").DataTable({
		displayLength: 10,
		lengthChange : true,
		ajax : {
			type : 'POST',
			dataSrc : 'data',
			url : 'boardList.json',
			dataType : 'JSON'
		},
		columns : [ {
			"data" : "boardTitle"
		}, {
			"data" : "departmentName"
		}, {
			"data" : "employeeName"
		}, {
			"data" : "boardCreateDate"
		}, {
			"data" : "boardName"
		} ]

	}) //DataTable()
	/* jQueryDataTable 끝 */

	    /*var resData = [ 
	                   {
	                	   'text':'부서명1',
	                	   'children':[
	                	               {'text':'사원명1'},
	                	               {'text':'사원명2'}
	                	   ]
	                   },
	                   {
	                	   'text':'부서명2',
	                	   'children':[
	                	               {'text':'사원명1'},
	                	               {'text':'사원명2'}
	                	   ]
	                   },
	                   {
	                	   'text':'부서명3',
	                	   'children':[
	                	               {'text':'사원명1'},
	                	               {'text':'사원명2'}
	                	   ]
	                   }
		];*/
	
    /*jsTree 시작*/
    var treeArray = new Array();
    $('.organization_chart').on('click',function(){
    	$.ajax({
        	type: 'post',
        	dataType: 'json',
        	async: false,
        	url: '/Springboard/treeList.json',
        	success: function(data, textStatus){
        		for(var i=0; i<data.length-1; i++){
        			if(data[i].department_name!=data[i+1].department_name){
        				temp = data[i+1].department_name;
        				root['text'] = data[i].department_name;
        				console.log('1. root text : '+root['text']);
        				for(var j=0; j<data.length; j++){
        					if(root['text']==data[j].department_name){
        						child['text'] = data[j].employee_name;
        						console.log('2. child text : '+child['text']);
        						root['children'] = { 'text' : data[j].employee_name };
        						console.log('3. root.children text : '+root['children']);
        					}
        				}
        			}
        			treeArray.push(root);
        		}
        		/*
        		var temp;
        		var root = {};
        		var child = {};
        		for(var i=0; i<data.length-1; i++){
        			if(data[i].department_name!=data[i+1].department_name){
        				temp = data[i+1].department_name;
        				root['text'] = data[i].department_name;
        				console.log('1. root text : '+root['text']);
        				for(var j=0; j<data.length; j++){
        					if(root['text']==data[j].department_name){
        						child['text'] = data[j].employee_name;
        						console.log('2. child text : '+child['text']);
        						root['children'] = { 'text' : data[j].employee_name };
        						console.log('3. root.children text : '+root['children']);
        					}
        				}
        			}
        			treeArray.push(root);
        		}*/
        		
        		/*root['text'] = temp;
        		for(var k in data){
        			if(temp==data[k].department_name){
						child['text'] = data[k].employee_name;
						childArray.push(child['text']);
					}
        		}
        		root['children'] = childArray;
        		treeArray.push(root);*/
        	},
        	error: function(data,textstatus){
        		alert('에러');
        	}
        });
    	
    	$(this).find('.tree').jstree({
        	'plugins' : ['wholerow','json_data','changed','contextmenu','sort','crrm' ], 
        	'core' : { 'data' : treeArray }
        }).on('select_node.jstree',function(event, data){ //select_node.jstree
        	var treeData = data.instance.get_node(data.selected).text;
        	$('#writer').val(treeData);
        	$(this).find('.tree').toggle();
        });
    });
    /*jsTree 끝*/
	
    
	/* jQueryUI;datepcker 시작 */
	$('#datepicker1').datepicker({
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
	
    $('#datepicker2').datepicker({
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
    /* jQueryUI;datepcker 끝 */
    
    
    /*게시판 검색 시작*/
    $('#search_btn').on('click',function(){
    	$.ajax({
        	type: 'post',
        	dataType: 'json',
        	async: false,
        	url: '/Springboard/boardListSearch.json',
        	data: {
        		search_date1 : $('#datepicker1').val(),
        		search_date2 : $('#datepicker2').val()
        	},
        	success: function(data, textStatus){
        		if(data!=null){
        			$('#main-table').DataTable().row.add(data).draw();
        		}else{
        			alert('데이터가 없습니다.');
        		}
        	},
        	error: function(data,textstatus){
        		alert('에러');
        	}
        });
    });
    /*게시판 검색 끝*/
    
    
	$("#add_btn").on("click", function() {
		$("#board-register-wrap").css("display", "block");	
	});
	
	$("#board-register-cancleBtn").on("click", function() {
		$("#board-register-wrap").css("display", "none");	
	})
	
})