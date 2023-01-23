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

    if (slides.length !== 0) {
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

    if(slide.length <= 1 && slide.length !== 0) {
        document.querySelector("." + carouselClass[classIndex] + " > .controls").style.display = "none";
    }
}
/*
========================================
=============== FILTERS ================
========================================
*/
let active_filters = [];
if(document.getElementsByClassName("search-bar")[0]) filterSelection("all");
function filterSelection(selection) {
    let cards_to_filter = document.querySelectorAll("#filtered-container .card");
    if (selection === "all") {
        active_filters = [];
        document.getElementsByClassName("search-bar")[0].value = "";
        cards_to_filter.forEach((card) => {
            card.style.display = "block";
        });

        return
    }


    if (active_filters.includes(selection)) {
        active_filters.splice(active_filters.indexOf(selection), 1);
    } else {
        active_filters.push(selection);
    }

    let match_counter = 0;
    for (let i = 0; i < cards_to_filter.length; i++) {
        if (checkFilters(cards_to_filter[i].classList) && checkSearchBar(cards_to_filter[i].getElementsByTagName("h2")[0].innerHTML.toUpperCase())) {
            if(match_counter === 0) document.getElementById("notFoundText").style.display = "none";
            cards_to_filter[i].style.display = "block";
            match_counter++;
        } else {
            cards_to_filter[i].style.display = "none";
        }
    }

    if (match_counter === 0) document.getElementById("notFoundText").style.display = "block";
}

function checkFilters(classes) {
    if (classes.length === 0) {
        return false;
    }

    let needed_matches = active_filters.length;

    for (let i = 0; i < classes.length; i++) {
        if (active_filters.includes(classes[i])) {
            needed_matches--;
        }
    }

    return needed_matches === 0;
}

let filter_buttons = document.querySelectorAll(".filters-container button");
for (let i = 0; i < filter_buttons.length; i++) {
    filter_buttons[i].addEventListener("click", function() {
        if(this.classList.contains("reset-btn")) {
            filter_buttons.forEach((button) => {
                button.classList.remove("active-filter");
            });
            this.classList.add("active-filter");
            return
        } else {
            document.getElementsByClassName("reset-btn")[0].classList.remove("active-filter");
        }

        this.classList.toggle("active-filter");
        if(document.getElementsByClassName("active-filter").length === 0) {
            document.querySelector(".filters-container .reset-btn").classList.add("active-filter");
        } else {
            document.querySelector(".filters-container .reset-btn").classList.remove("active-filter");
        }
    });
}
/*
===========================================
=============== SEARCH BAR ================
===========================================
*/

function checkSearchBar(destination_name) {
    let input = document.getElementsByClassName("search-bar")[0].value.toUpperCase();
    return destination_name.toUpperCase().indexOf(input) > -1;
}

function searchDestination() {
    let cards = document.getElementsByClassName("card");

    let counter = 0;
    for (let i = 0; i < cards.length; i++) {
        let destination_name = cards[i].getElementsByTagName("h2")[0].innerHTML.toUpperCase();
        let filtered = checkFilters(cards[i].classList);
        if (checkSearchBar(destination_name) && filtered) {
            if (counter === 0) document.getElementById("notFoundText").style.display = "none";
            cards[i].style.display = "block";
            counter++;
        } else {
            cards[i].style.display = "none";
        }
    }

    if (counter === 0) document.getElementById("notFoundText").style.display = "block";
}

/*
===========================================
================= HEADER ==================
===========================================
*/

const menu = document.getElementsByClassName("menu")[0];
const burgerMenu = document.getElementsByClassName("burger")[0];

if (burgerMenu && menu) {
    burgerMenu.addEventListener("click", () => {
        burgerMenu.classList.toggle("is-active");
        menu.classList.toggle("is-active");
    });
}

/*
===========================================
================= ACCESS ==================
===========================================
*/
let registration_button = document.getElementById("back-to-registration-button");
let login_button = document.getElementById("back-to-login-button");
let login_section = document.getElementById("login-section");
let registration_section = document.getElementById("registration-section");

if(registration_button) {
    registration_button.addEventListener("click", () => {
        login_section.style.display = "none";
        registration_section.style.display = "flex";
    })
}
if(login_button) {
    login_button.addEventListener("click", () => {
        login_section.style.display = "flex";
        registration_section.style.display = "none";
    })
}

let first_password = document.getElementById("password");
let repeated_password = document.getElementById("repeated-password");
let not_matching_passwords = document.getElementById("not-matching-passwords");

if(repeated_password && not_matching_passwords) {
    repeated_password.addEventListener("keyup", () => {
        if(first_password.value !== repeated_password.value && first_password.value !== "") {
            not_matching_passwords.style.display = "block";
        } else {
            not_matching_passwords.style.display = "none";
        }
    })
}

/*
===========================================
=============== LIGHT/DARK ================
===========================================
*/

let theme_button = document.getElementById("theme-button");
if(theme_button) {
    setTheme();
    theme_button.addEventListener("click", () => {
        let theme_icon = document.getElementById("theme-icon");
        if(theme_icon.innerHTML === "light_mode") {
            theme_icon.innerHTML = "dark_mode";
            localStorage.setItem("theme", "light");
        } else {
            theme_icon.innerHTML = "light_mode";
            localStorage.setItem("theme", "dark");
        }
        document.body.classList.toggle("dark-theme");
    })
}

function setTheme() {
    let theme = localStorage.getItem("theme");
    if(theme === "dark") {
        document.body.classList.toggle("dark-theme");
        document.getElementById("theme-icon").innerHTML = "light_mode";
    }
}