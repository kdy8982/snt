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
	
	
	
	    var resData = [ 
		{ 
			"parent": "#", 
			"text": "샘플데이터1" ,
			"data" : { "url" : "/context/url1" } 
		}, 
		{ 
			"parent": "#", 
			"text": "샘플데이터2" ,
			"data" : { "url" : "/context/url2" } 
		}, 
		{ 
			"parent": "#", 
			"text": "샘플데이터3" ,
			"data" : { "url" : "/context/url3" } 
		} 
	]
    
    
    /*jsTree 시작*/
    var treeArray = new Array();
    
    $('.organization_chart').on('click',function(){
    	/*$.ajax({
        	type: 'post',
        	dataType: 'json',
        	async: false,
        	url: '/Springboard/boardList.do',
        	success: function(data, textStatus){
        		var treeJson = {
        				'id':'',
        				'parent':'',
        				'text':'',
        				'data':{
        					'rownum':''
        				}
        		};
        		for(var i in data){
        			treeJson['id'] = data[i].id;
        			treeJson['parent'] = data[i].parent;
        			treeJson['text'] = data[i].text;
        			treeJson['data'] = data[i].data;
        			treeJson.data['rownum'] = data[i].rownum;
        			treeArray.push(treeJson);
        		}
        	},
        	error: function(data,textstatus){
        		alert('에러');
        	}
        });*/
    	
    	$('.tree').jstree({
        	"plugins" : ['wholerow',"json_data","changed","contextmenu","sort","crrm" ], 
        	"core" : { "data" : resData }
        }).on('select_node.jstree',function(event, data){
        	$('#writer').val($tree.jstree('get_selected'));
        	/* $('#tree').hide(); */
        });
    });
    /*jsTree 끝*/
	
    
	/* jQueryUI;datepcker 시작 */
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
    /* jQueryUI;datepcker 끝 */
	
    
	$("#add_btn").on("click", function() {
		$("#board-register-wrap").css("display", "block");	
	});
	
	$("#board-register-cancleBtn").on("click", function() {
		$("#board-register-wrap").css("display", "none");	
	})
	
})