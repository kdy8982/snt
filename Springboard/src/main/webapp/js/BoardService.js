var boardService = (function() {
	
	function selectBoardCount(callback, error) {
		$.ajax({
			type : 'post',
			url : '/boardService/selectBoardCnt.do',
			dataType: "json",
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
	
	function insert(board, callback, error) {
		if(board.board_name=="free"){
		$.ajax({
			type : 'post',
			url : board.board_name +'/boardService/insertFree.do',
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
		}else if(board.board_name=="notice"){
			$.ajax({
				type : 'post',
				url : board.board_name +'/boardService/insertNotice.do',
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
	} 
	
	function selectBoard(board, callback, error) {
		$.ajax({
			type : 'post',
			url :  board.board_name + '/boardService/selectBoard.do',
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
		$.ajax({
			type : 'PUT',
			url : board.board_name + '/boardService/updateBoard.do',
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
		$.ajax({
			type : 'POST',
			url : board.board_name + '/boardService/multiDelete.do',
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
	
	return {
		insert : insert,
		selectBoard : selectBoard,
		updateBoard : updateBoard,
		selectBoardCount : selectBoardCount,
		remove : remove
	};
})();