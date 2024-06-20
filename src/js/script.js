$(window).on("load", function() {
	  $(".items").isotope({
    filter: "*",
    animationOptions: {
      duration: 500,
      easing: "linear",
      queue: false
    }
  });
});


$(document).ready(() => {
  $("#slides").superslides({
    animation: "fade",
    play: "2500",
    pagination: false
  });

  ScrollReveal().reveal(".logo", {
    origin: "top",
    distance: "300px",
    duration: 2000,
    easing: "ease"
  });

  ScrollReveal().reveal(".socials", {
    origin: "right",
    distance: "80px",
    duration: 2000,
    easing: "ease"
  });
  ScrollReveal().reveal(".about-img", {
    origin: "left",
    distance: "0px",
    duration: 2000,
    easing: "ease"
  });

  let typed = new Typed(".typed", {
    strings: [
      "DevOps/Cloud Engineer",
      "Application Developer",
      "Lifetime Student"
    ],
    typeSpeed: 70,
    loop: true,
    startDelay: 1600
  });

  let skillsTopOffset = $("#skills").offset().top;

  $(window).scroll(() => {
    if (window.pageYOffset > skillsTopOffset - $(window).height() + 220) {
      $(".chart").easyPieChart({
        easing: "easeInOut",
        barColor: "#fff",
        trackColor: true,
        scaleColor: true,
        lineWidth: 4,
        size: 152,
        onStep: function(from, to, percent) {
          $(this.el)
            .find(".percent")
            .text(Math.round(percent));
        }
      });
    }
  });

  $("[data-fancybox]").fancybox();



  $("#filters a").click(function() {
    $("#filters .current").removeClass("current");
    $(this).addClass("current");

    let selector = $(this).attr("data-filter");

    $(".items").isotope({
      filter: selector,
      animationOptions: {
        duration: 500,
        easing: "linear",
        queue: false
      }
    });
    return false;
  });

  setTimeout(() => {
    $(".items").isotope({
      filter: "*",
      animationOptions: {
        duration: 500,
        easing: "linear",
        queue: false
      }
    });
  }, 1000);
});
