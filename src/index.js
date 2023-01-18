/*
=======================================
============== CAROUSEL ===============
=======================================
*/

let slideIndex = [1, 1, 1];
let carouselClass = ["gallery-carousel", "hotel-carousel", "airline-carousel"];
let slideClass = ["gallery-slide", "hotel-slide", "airline-slide"];
let dotId = ["gallery-dot", "hotel-dot", "airline-dot"];
showSlides(slideIndex[0], 0);
showSlides(slideIndex[1], 1);
showSlides(slideIndex[2], 2);
hideUnnecessaryControls(1);
hideUnnecessaryControls(2);

function currentSlide(n, index) {
    showSlides(slideIndex[index] = n, index);
}

function showSlides(n, index) {
    let i;
    let slides = document.getElementsByClassName(slideClass[index]);
    let dots = document.getElementsByClassName(dotId[index]);

    if(n > slides.length) {
        slideIndex[index] = 1;
    }

    if(n < 1) {
        slideIndex[index] = slides.length;
    }

    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }

    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }

    slides[slideIndex[index] - 1].style.display = "block";
    dots[slideIndex[index] - 1].className += " active";
}

function plusSlides(n, index) {
    showSlides(slideIndex[index] += n, index);
}

let touchstartX = 0;
let touchstartY = 0;
let touchendX = 0;
let touchendY = 0;

function leftSwipe() {
    let swiped_left = touchendX < touchstartX;
    let acceptable_vertical_movement = Math.abs(touchendY - touchstartY) < 175;
    let acceptable_horizontal_movement = Math.abs(touchendX - touchstartX) > 50;

    return swiped_left && acceptable_horizontal_movement && acceptable_vertical_movement;
}

function rightSwipe() {
    let swiped_right = touchendX > touchstartX;
    let acceptable_vertical_movement = Math.abs(touchendY - touchstartY) < 175;
    let acceptable_horizontal_movement = Math.abs(touchendX - touchstartX) > 50;

    return swiped_right && acceptable_horizontal_movement && acceptable_vertical_movement;
}

function swipeCarousel(index) {
    if (leftSwipe()) {
        plusSlides(1, index);
        return
    }
     if (rightSwipe()) {
         plusSlides(-1, index);
         return
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

        for (let i = 0; i < carouselClass.length; ++i) {
            if (element.classList.contains(carouselClass[i])) {
                swipeCarousel(i);
                return
            }
        }
    })
})

function hideUnnecessaryControls(classIndex) {
    let slide = document.getElementsByClassName(slideClass[classIndex]);

    if(slide.length <= 1) {
        document.querySelector("." + carouselClass[classIndex] + " > .controls").style.display = "none";
    }
}