$(document).ready(function() {

	$("#main-table").DataTable({
		lengthMenu: [ 10, 20, 30, 40, 50 ],
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
    	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토']
    }); // datepikcer();
	
	
	
})