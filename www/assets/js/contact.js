(function() {
	"use strict";

	var setup = function() {
		$("#contact form").on("submit", onSubmit);
	};

	var onSubmit = function(e) {
		var $form = $(this),
			$submitButton = $form.find("input[type=submit], button[type=submit]"),
			$toDisable = $form.find("input, textarea, button[type=submit]"),
			$thankYou = $form.siblings(".thank-you");

		$.ajax({
		    url: $form.attr("action"),
		    method: "POST",
		    data: $form.serialize(),
		    dataType: "json"
		})
		.then(function() {
			$form.hide();
			$thankYou.fadeIn();
		})
		.fail(function() {
			// Just reset everything
			$toDisable.prop("disabled", false);
			$submitButton.children("span").hide().filter(":not(.loading)").show();
		});

		$toDisable.prop("disabled", true);
		$submitButton.children("span").hide().filter(".loading").show();

		return false;
	};



	$(setup);
}());