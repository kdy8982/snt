$(document).ready(function() {
	var History = window.History;
    var pageUrl = ​window.location.href;
    
    if (History.enabled) {
        History.pushState({ _index: History.getCurrentIndex(), path: pageUrl }, "타이틀", pageUrl);
    } else {
        return false; 

    }

    // 브라우저의 앞/뒤 버튼을 클릭할때 일어나는 이벤트
    History.Adapter.bind(window, 'statechange', function () {
        var currentIndex = History.getCurrentIndex();
        var internal = (History.getState().data._index == (currentIndex - 1));
        if (!internal) {
            ajaxUrl = History.getState().data.path;

            $.ajax({
                type: "POST",
                url: ajaxUrl,
                data: { type: "post" },
                success: function (data) {
                    $('#container').html(data);
                }
            });
        }
    });

    // 네비게이션을 클릭할 때 이벤트를 준 것
    $('.navigation').live("click", function (e) {
        if (History.enabled) {
            pageUrl = $(this).attr("href");

            $.ajax({
                type: "POST",
                url: pageUrl,
                data: { type: "post" },
                success: function (data) {
                    $("#container").html(data);
                }
            });

            if (pageUrl != window.location) {
                History.pushState({ _index: History.getCurrentIndex(), path: pageUrl }, document.title, pageUrl);
            }
            return false;
        } else {
            return true;
        }
    });
})



 