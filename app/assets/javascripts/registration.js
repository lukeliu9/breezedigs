$(function() {
			$("button.role-type").click(function(e) {
			  e.preventDefault();
			  $("button.role-type").removeClass("role-selected");
			  $(this).addClass("role-selected");
			});
		});