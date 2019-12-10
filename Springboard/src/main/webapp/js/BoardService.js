var boardService = (function() {
	
	function selectBoardCount(callback, error) {
		console.log("selectBoardCount - boardservice.js")
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
		console.log('자유 탔니<', ">"+board.board_name);
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
			console.log(board.board_type,"공지?")
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
		console.log(board)
		console.log(decodeURI(board.board_name))
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
		if(confirm("정말 삭제하시겠습니까?")== true){
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
		selectBoardCount : selectBoardCount,
		remove : remove
	};
})();