$(window).ready(function () {

  let multipleCardCarousel = document.querySelector(
    "#carouselExampleControls"
  );
  if (window.matchMedia("(min-width: 768px)").matches) {
    var carousel = new bootstrap.Carousel(multipleCardCarousel, {
      interval: false,
    });
    var carouselWidth = $(".carousel-inner")[0].scrollWidth;
    var carouselScreen = $(".carousel-inner")[0].clientWidth;
    var cardWidth = $(".carousel-item").width();
    let elementWidth = carouselScreen - cardWidth * 4 + 16;
    var scrollPosition = 0;
    $("#carouselExampleControls .carousel-control-next").on("click", function () {
      if (scrollPosition < (carouselWidth - elementWidth) - cardWidth * 4) {
        scrollPosition += cardWidth;
        $("#carouselExampleControls .carousel-inner").animate(
          { scrollLeft: scrollPosition },
          600
        );
      }
    });
    $("#carouselExampleControls .carousel-control-prev").on("click", function () {
      if (scrollPosition > 0) {
        scrollPosition -= cardWidth;
        $("#carouselExampleControls .carousel-inner").animate(
          { scrollLeft: scrollPosition },
          600
        );
      }
    });
  } else {
    $(multipleCardCarousel).addClass("slide");
  }
})