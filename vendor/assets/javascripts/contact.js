/**	CONTACT FORM
<<<<<<< HEAD:public/assets/js/contact.js
*************************************************** **/
=======
***************************************************fffdd **/
>>>>>>> 2b1a81a8b0bf928d7fcad5877559d4e0d3407914:vendor/assets/javascripts/contact.js
var _hash = window.location.hash;

/**
	BROWSER HASH - from php/contact.php redirect!

	#alert_success 		= email sent
	#alert_failed		= email not sent - internal server error (404 error or SMTP problem)
	#alert_mandatory	= email not sent - required fields empty
**/	jQuery(_hash).show();

$(document).ready(function(){
    $("#contact-button").click(function(){
        alert("Our Contact us Section is presently under maintenance and should be back up soon, for any rush instances please email us all the details at samael.tessier@FakeEmail.com")
    })
})