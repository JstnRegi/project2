// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).ready(function() {
	// NAVBAR SCROLL OPACITY EFFECT

	// $(document).scroll(function() {
	//   var dHeight = $(this).height()-$(window).height();
	//   if (dHeight >= $(this).scrollTop()) {
	//     $('nav').css('background', 'rgba(0,0,0,' + $(this).scrollTop() / dHeight + ')');
	//   }
	// });


	$("#home_link").click(function() {
		scrollToAnchor('home_link');
	});

	$("#slide1_button").click(function() {
		scrollToAnchor('slide1');
	});

	$("#slide2_button").click(function() {
		scrollToAnchor('slide2');
	});

	$("#slide3_button").click(function() {
		scrollToAnchor('slide3');
	});

	$("#slide4_button").click(function() {
		scrollToAnchor('slide4');
	});

	submitReview();
	

});


function scrollToAnchor(aid) {
	var aTag = $("a[name='"+ aid + "']");
	$('html,body').animate({
		scrollTop: aTag.offset().top},2000);
}

function submitReview() {
	$('#review-submit').click(function () {
		var data = {};
		data.bootcamp_id = window.location.pathname.split("/")[2];
		data.bootcamp_review = $('#bootcamp-review-form').serializeArray();
		data.instructor_review = $('#instructor-review-form').serializeArray();
		data.hired = jobStatus();
		data.worthit = worthIt();
		data.campus = $('#campus-rate').val();
		data.jobsupp = $('#job-supp-rate').val();
		data.locationrate = $('#location-rate').val();  

		$.post('/reviews', data).done(function(data) {
			window.location.href = data;
		});
	})

}

function jobStatus() {
	var hired;
	if (document.getElementById('employed').checked) {
		hired = 'Employed';
	} else if (document.getElementById('not-employed').checked) {
		hired = 'Not Employed'
	} else if (document.getElementById('still-attending').checked){
		hired = 'Still Attending'
	} else if (document.getElementById('not-seeking-employment').checked){
		hired = 'Not Seeking Employment'
	}

	return hired;
}

function worthIt() {
	var courseWorth;
	if (document.getElementById('worth-it-yes').checked) {
		courseWorth = 'Yes';
	} else if (document.getElementById('worth-it-no').checked) {
		courseWorth = 'No';
	} 

	return courseWorth;
}
