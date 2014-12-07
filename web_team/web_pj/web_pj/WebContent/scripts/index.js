// Page Contructor
$(function() {
	// set page-wide event listeners
	document.onkeydown = keyHandler;
});
function popup(id) {
	// Clear All Popup
	popupClear();
	// Popup Start
	$("#blinder").show();
	var popupName = "#" + id + "Popup";
	$(popupName).show();
}

function popupClear() {
	$(".blinder").hide();
	$(".popup").hide();
}

function keyHandler() {
	// Consume event: To prevent action occur while 'Input' focused
	if (document.body != document.activeElement)
		return;
	// get event
	var e;
	if (arguments[0] != undefined)
		e = arguments[0]; // For FireFox
	else
		e = window.event;
	//'ESC' key
	if (e.keyCode == 27) {
		$(".blinder").hide();
		$(".popup").hide();
	}
	//'q' key
	else if (e.keyCode == 81) {
		popup('show');
	}
	//'w' key
	else if (e.keyCode == 87) {
		popup('show1');
	}
	//'e' key
	else if (e.keyCode == 69) {
		popup('show2');
	}
	// 'd' key For DEBUG(Toggle Border) TODO Remove this code before release
	else if (e.keyCode == 68) {
		if ($("div").css("border-style") == "none")
			$("div").css("border", "solid 1px");
		else
			$("div").css("border-style", "none");
	}
}
