$(document).ready(function() {
	
	$("#main-table").DataTable({
		
	     ajax: {
	         'type': 'POST',
	         'url':'<c:url value="/getRecordList.do" />',
	         'dataType' : 'JSON'
	      },
	     columns: [
	         {"data": "title"},
	         {"data": "department_name"},
	         {"data": "writer"}, 
	         {"data": "create_date"},
	         {"data": "board_name"}
	     ]
		
	})
})