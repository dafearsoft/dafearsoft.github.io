function goToByScroll() {
  $('html,body').animate({
    scrollTop: $("#after-banner").offset().top,
  },
  'slow');
}

goToByScroll();



/* ------Scroll Top----- */
$(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
        $('.scroll-up').fadeIn();
    } else {
        $('.scroll-up').fadeOut();
    }
});

$('.scroll-up').click(function () {
    $("html, body").animate({
        scrollTop: 0
    }, 1000);
    return false;
});
