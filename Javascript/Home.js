var slideIndex = 1;
showSlides(slideIndex);
setTimeout(Slideshow, 3000);

function plusSlides(n) {
    showSlides(slideIndex += n);
}

function Slideshow() {
    plusSlides(1);
    setTimeout(Slideshow, 5000);
}

function showSlides(n) {
    var i;
    var width = 100;
    var slide = document.getElementById("Slide");
    if (n > 3) { slideIndex = 1 }
    if (n < 1) { slideIndex = 3 }
    slide.style.left = -width * [slideIndex - 1] + "%";
}