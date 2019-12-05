var BoardService = (function() {
	function insert(board, callback, error) {
		$.ajax({
			type : 'post',
			url : '/board/insert',
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
		add : add
	};
})();