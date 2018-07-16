$(document).ready(function() {
	$(".js-step-no-item").on("click", function(e) {
		var a = e.currentTarget;
		var t = a.getAttribute("data-target");
		console.log(t);
		$(".js-step-no-item").removeClass("active");
		$(".js-step-item").hide();
		$(t).show();
		$(a).addClass("active");
	})
});