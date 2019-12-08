var boardService = (function() {
	function insert(board, callback, error) {
		$.ajax({
			type : 'post',
			url : '/boardService/insert.do',
			data : JSON.stringify(board),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result, status);
				}
			},
			error : function(xhr, status, er) {
				console.log(er)
			}
		})
	} 
	
	function selectBoard(board, callback, error) {
		$.ajax({
			type : 'post',
			url : '/boardService/selectBoard.do',
			data : JSON.stringify(board),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result, status);
				}
			},
			error : function(xhr, status, er) {
				console.log(er)
			}
		})
	}
	
	function updateBoard(board, callback, error) {
		console.log(board)
		$.ajax({
			type : 'PUT',
			url : '/boardService/updateBoard.do',
			data : JSON.stringify(board),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result, status);
				}
			},
			error : function(xhr, status, er) {
				console.log(er)
			}
		})
	}
	function remove(board, callback, error) {
		if(confirm("정말 삭제하시겠습니까??")== true){
			console.log(board,"board ! !")
			$.ajax({
				type : 'POST',
				url : '/boardService/multiDelete.do',
				data : JSON.stringify(board),
				contentType : "application/json; charset=utf-8",
				success : function(result, status){
					if(callback) {
						callback(result, status)
					}
				},
				error : function(xhr, status, er){
					console.log(er)
				}
			})
		}
	}
	
	return {
		insert : insert,
		selectBoard : selectBoard,
		updateBoard : updateBoard,
		remove : remove
	};
})();