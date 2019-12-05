var boardService = (function() {
	function insert(board, callback, error) {
		console.log(board)
		$.ajax({
			type : 'post',
			url : '/boardService/insert.do',
			data : JSON.stringify(board),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				console.log(er)
			}
		})
	} 
	
	return {
		insert : insert
	};
})();