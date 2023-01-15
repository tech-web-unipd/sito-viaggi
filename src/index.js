let slideIndex = 1;
showSlides(slideIndex);

function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    let i;
    let slides = document.getElementsByClassName("carousel-slide");
    let dots = document.getElementsByClassName("dot");

    if(n > slides.length) {
        slideIndex = 1;
    }

    if(n < 1) {
        slideIndex = slides.length;
    }

    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }

    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }

    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " active";
}

function plusSlides(n) {
    showSlides(slideIndex += n);
}

let touchstartX = 0;
let touchstartY = 0;
let touchendX = 0;
let touchendY = 0;

function checkDirection() {
    let swiped_up = touchendY < touchstartY;
    let swiped_down = touchendY > touchstartY;
    let swiped_left = touchendX < touchstartX;
    let swiped_right = touchendX > touchstartX;
    let vertical_movement = Math.abs(touchendY - touchstartY);
    let acceptable_vertical_movement = 175;

    if (swiped_left && (vertical_movement < acceptable_vertical_movement)) {
        plusSlides(1);
        return;
    }

    if (swiped_right && (vertical_movement < acceptable_vertical_movement)) {
        plusSlides(-1);
        return;
    }
}

Array.from(document.getElementsByClassName("carousel")).map((element) => {
    element.addEventListener('touchstart', e => {
        touchstartX = e.changedTouches[0].screenX;
        touchstartY = e.changedTouches[0].screenY;
    })

    element.addEventListener('touchend', e => {
        touchendX = e.changedTouches[0].screenX;
        touchendY = e.changedTouches[0].screenY;
        checkDirection();
    })
})