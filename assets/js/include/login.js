// JQUERY AJAX POST

$(function(){
	islogin();
});

function islogin() {
	$("#login").submit(function(event) {
		event.preventDefault();
		dataString = $("#login").serialize();
		
		$.ajax({
			type: "POST",
			url: "login/islogin",
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
