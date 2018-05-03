<script>
    var AWGE_DESKTOP_DRAG_VISIBLE = false;
    var AWGE_DESKTOP_DRAG_DOWN = true;
    var AWGE_DESKTOP_DRAG_RIGHT = true;
    var AWGE_DESKTOP_DRAG_INITIAL = {};
    (function AWGEdefer() {
        if (window.jQuery && $("#reconnect-alert").hasClass("ui-draggable")) {
            $("#panel").mousedown(function() {
                if ($(event.target).attr('id') == "awge-desktop" || $(event.target).attr('id') == "content") {
                    if (event.stopPropagation) event.stopPropagation();
                    if (event.preventDefault) event.preventDefault();
                    event.cancelBubble = true;
                    event.returnValue = false;
                    $(".awge-desktop-drag").each(function(ind, obj) {
                        $(obj).remove();
                    });
                    $("#awge-desktop").append("<div class='awge-desktop-drag' id='awge-desktop-drag'></div>");
                    $("#awge-desktop-drag").css("top", event.clientY);
                    $("#awge-desktop-drag").css("left", event.clientX);
                    $("#awge-desktop-drag").css("bottom", $("#awge-desktop").height() - event.clientY - 1);
                    $("#awge-desktop-drag").css("right", $("#awge-desktop").width() - event.clientX + 1);
                    AWGE_DESKTOP_DRAG_INITIAL = {
                        x: event.clientX,
                        y: event.clientY
                    }
                    AWGE_DESKTOP_DRAG_VISIBLE = true;
                    AWGE_DESKTOP_DRAG_DOWN = null;
                    AWGE_DESKTOP_DRAG_RIGHT = null;
                }
            });
            $(window).mousemove(function() {
                if (AWGE_DESKTOP_DRAG_VISIBLE) {
                    if (AWGE_DESKTOP_DRAG_RIGHT == null) {
                        AWGE_DESKTOP_DRAG_RIGHT = (AWGE_DESKTOP_DRAG_INITIAL.x < event.clientX);
                    }
                    if (AWGE_DESKTOP_DRAG_DOWN == null) {
                        AWGE_DESKTOP_DRAG_DOWN = (AWGE_DESKTOP_DRAG_INITIAL.y < event.clientY);
                    }

                    if (AWGE_DESKTOP_DRAG_DOWN && $("#awge-desktop-drag").position().top > event.clientY) {
                        AWGE_DESKTOP_DRAG_DOWN = false;
                        $("#awge-desktop-drag").css("bottom", $("#awge-desktop").height() - $("#awge-desktop-drag").css('top'));
                    }
                    else if (!AWGE_DESKTOP_DRAG_DOWN && $("#awge-desktop-drag").position().top + $("#awge-desktop-drag").height() < event.clientY) {
                        AWGE_DESKTOP_DRAG_DOWN = true;
                        $("#awge-desktop-drag").css("top", $("#awge-desktop").height() - $("#awge-desktop-drag").css('bottom'));
                    }
                    if (AWGE_DESKTOP_DRAG_RIGHT && $("#awge-desktop-drag").position().left > event.clientX) {
                        AWGE_DESKTOP_DRAG_RIGHT = false;
                        $("#awge-desktop-drag").css("right", $("#awge-desktop").width() - $("#awge-desktop-drag").css('left'));
                    }
                    else if (!AWGE_DESKTOP_DRAG_RIGHT && $("#awge-desktop-drag").position().left + $("#awge-desktop-drag").width() < event.clientX) {
                        AWGE_DESKTOP_DRAG_RIGHT = true;
                        $("#awge-desktop-drag").css("left", $("#awge-desktop").width() - $("#awge-desktop-drag").css('right'));
                    }

                    if (AWGE_DESKTOP_DRAG_DOWN) {
                        $("#awge-desktop-drag").css("bottom", ($("#awge-desktop").height() - event.clientY < 0 ? 0 : $("#awge-desktop").height() - event.clientY));
                    }
                    else {
                        $("#awge-desktop-drag").css("top", (event.clientY < 0 ? 0 : event.clientY));
                    }
                    if (AWGE_DESKTOP_DRAG_RIGHT) {
                        $("#awge-desktop-drag").css("right", ($("#awge-desktop").width() - event.clientX < 0 ? 0 : $("#awge-desktop").width() - event.clientX));
                    }
                    else {
                        $("#awge-desktop-drag").css("left", (event.clientX < 0 ? 0 : event.clientX));
                    }
                }
            });
            $(window).mouseup(function() {
                if (AWGE_DESKTOP_DRAG_VISIBLE) {
                    $("#awge-desktop-drag").remove();
                    AWGE_DESKTOP_DRAG_VISIBLE = false;
                    AWGE_DESKTOP_DRAG_INITIAL = {};
                }
            });


            $(".awge-desktop-shortcut").each(function(ind, obj) {
                app.loadJQueryUI(function() {
                    $(obj).draggable({
                        containment: "#awge-desktop"
                    });
                });
            });

            $("#awge-desktop-computer").click(function() {
                window.open("https://www.awgeshit.com/", "_self");
            });

        }
        else {
            setTimeout(function() { AWGEdefer() }, 50);
        }
    })();
</script>
