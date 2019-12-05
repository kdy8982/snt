$(document).ready(function() {
	
	$("#main-table").DataTable({
	     ajax: {
	         type: 'POST',
	         dataSrc: 'data',
	         url:'board.json',
	         dataType : 'JSON'
	      },
	     columns: [
	         {"data": "title"},
	         {"data": "departmentName"},
	         {"data": "employeeName"},
	         {"data": "createDate"}, 
	         {"data": "boardName"}
	     ]
		
	})
})