$(document).ready(function() {
	
	$("#main-table").DataTable({
	     ajax: {
	         type: 'POST',
	         dataSrc: 'data',
	         url:'boardList.json',
	         dataType : 'JSON'
	      },
	     columns: [
	         {"data": "boardTitle"},
	         {"data": "departmentName"},
	         {"data": "employeeName"},
	         {"data": "boardCreateDate"}, 
	         {"data": "boardName"}
	     ]
		
	})
})