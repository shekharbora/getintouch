
$(document).ready(function(){/* off-canvas sidebar toggle */

$('[data-toggle=offcanvas]').click(function() {
  	$(this).toggleClass('visible-xs text-center');
    $(this).find('i').toggleClass('glyphicon-chevron-right glyphicon-chevron-left');
    $('.row-offcanvas').toggleClass('active');
    $('#lg-menu').toggleClass('hidden-xs').toggleClass('visible-xs');
    $('#xs-menu').toggleClass('visible-xs').toggleClass('hidden-xs');
    $('#btnShow').toggle();
});
});


function paginate(){
		$(window).scroll(function() {
					var url;
					url = $('.pagination .next_page').attr('href');
					// alert('fgfgf2');
					if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {						
						$('.pagination').show().html("<img src='https://s3-eu-west-1.amazonaws.com/1stspade-email-images/images/22.gif'>");						
						 return $.getScript(url);
					}
				});
}