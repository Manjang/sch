jQuery(document).ready(function($){
	

	$('#menuToggle').on('click', function () {
	    $('#menuToggle ul').toggleClass('mobile-menu')
	});


	$('.signup-login-form').find('input, textarea').on('keyup blur focus', function (e) {
  
	  	var $this = $(this),
	    label = $this.prev('label');

	  	if (e.type === 'keyup') {
			if ($this.val() === '') {
          		label.removeClass('active highlight');
      		  } else {
         		label.addClass('active highlight');
        	}
    	} else if (e.type === 'blur') {
    		if( $this.val() === '' ) {
    			label.removeClass('active highlight'); 
			} else {
		    	label.removeClass('highlight');   
			}   
    	} else if (e.type === 'focus') {
      
     		if( $this.val() === '' ) {
    			label.removeClass('highlight'); 
			} 
	      	else if( $this.val() !== '' ) {
			    label.addClass('highlight');
			}
    	}

	});


	$('.tab a').on('click', function (e) {
	  
	  	e.preventDefault();
	  
	  	$(this).parent().addClass('active');
	  	$(this).parent().siblings().removeClass('active');
	  
	  	target = $(this).attr('href');

	  	$('.tab-content > div').not(target).hide();
	  
	  	$(target).fadeIn(600);
	  
	});




	  $(function() { // DOM ready
	    // If a link has a dropdown, add sub menu toggle.
	    $('nav ul li a:not(:only-child)').click(function(e) {
	      $(this).siblings('.nav-dropdown').toggle();
	      // Close one dropdown when selecting another
	      $('.nav-dropdown').not($(this).siblings()).hide();
	      e.stopPropagation();
	    });
	    // Clicking away from dropdown will remove the dropdown class
	    $('html').click(function() {
	      $('.nav-dropdown').hide();
	    });
	    // Toggle open and close nav styles on click
	    $('#nav-toggle').click(function() {
	      $('nav ul').slideToggle();
	    });
	    // Hamburger to X toggle
	    $('#nav-toggle').on('click', function() {
	      this.classList.toggle('active');
	    });
	  }); // end DOM ready





	//Reviews Load More  
	$(function () {
	    $("#reviews .review").slice(0, 2).show();
	    $("#loadMore").on('click', function (e) {
	        e.preventDefault();
	        $("#reviews .review:hidden").slice(0, 2).slideDown();
	        if ($("#reviews .review:hidden").length == 0) {
	            $("#load").fadeOut('slow');
	        }
	        $('html,body').animate({
	            scrollTop: $(this).offset().top
	        }, 1500);
	    });
	});



});