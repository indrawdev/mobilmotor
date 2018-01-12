// JQUERY AJAX POST

$(function(){
	// call back
	individu();
	dealer();
});

function individu() {
	$("#register").submit(function(event) {
		event.preventDefault();
		dataString = $("#register").serialize();

		$.ajax({
			type: "POST",
			url: "register/individu",
			dataType: "json",
			data: dataString,
			success: function(data) {
				if (data.response == 'failed') {
					message = '<div class="alert alert-warning" role="alert">' + data.message + '</div>'
					$('#response').html(message);
				} else {
					message = '<div class="alert alert-success" role="alert">' + data.message + '</div>'
					$('#response').html(message);
					setInterval(function() {
						uri = data.redirect;
						self.location = uri;
					}, 1000);
				}
			},
			error: function() {
				alert('error handing here');
			}
		});
		return false;
	});
}

function dealer() {
	$("#reg").submit(function(event) {
		event.preventDefault();
		dataString = $("#reg").serialize();

		$.ajax({
			type: "POST",
			url: "register/dealer",
			dataType: "json",
			data: dataString,
			success: function(data) {
				if (data.response == 'failed') {
					message = '<div class="alert alert-warning" role="alert">' + data.message + '</div>'
					$('#response').html(message);
				} else {
					message = '<div class="alert alert-success" role="alert">' + data.message + '</div>'
					$('#response').html(message);
					setInterval(function() {
						uri = data.redirect;
						self.location = uri;
					}, 1000);
				}
			},
			error: function() {
				alert('error handing here');
			}
		});
		return false;
	});
}