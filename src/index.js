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

let next_image = document.getElementById("next-image");
let prev_image = document.getElementById("prev-image");
if(next_image && prev_image) {
    next_image.addEventListener("click", () => {
        plusSlides(1, 0);
    });
    prev_image.addEventListener("click", () => {
        plusSlides(-1, 0);
    });
}

let next_hotel = document.getElementById("next-hotel");
let prev_hotel = document.getElementById("prev-hotel");
if(next_hotel && prev_hotel) {
    next_hotel.addEventListener("click", () => {
        plusSlides(1, 1);
    });
    prev_hotel.addEventListener("click", () => {
        plusSlides(-1, 1);
    });
}

let next_airline = document.getElementById("next-airline");
let prev_airline = document.getElementById("prev-airline");
if(next_airline && prev_airline) {
    next_airline.addEventListener("click", () => {
        plusSlides(1, 2);
    });
    prev_airline.addEventListener("click", () => {
        plusSlides(-1, 2);
    });
}

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

let all_button = document.getElementById("all");
if(all_button) all_button.addEventListener("click", function() {
    filterSelection("all");
});
let africa_button = document.getElementById("africa");
if(africa_button) africa_button.addEventListener("click", function() {
    filterSelection("africa");
});
let north_america_button = document.getElementById("north-america");
if(north_america_button) north_america_button.addEventListener("click", function() {
    filterSelection("north-america");
});
let south_america_button = document.getElementById("south-america");
if(south_america_button) south_america_button.addEventListener("click", function() {
    filterSelection("south-america");
});
let asia_button = document.getElementById("asia");
if(asia_button) asia_button.addEventListener("click", function() {
    filterSelection("asia");
});
let europe_button = document.getElementById("europe");
if(europe_button) europe_button.addEventListener("click", function() {
    filterSelection("europe");
});
let oceania_button = document.getElementById("oceania");
if(oceania_button) oceania_button.addEventListener("click", function() {
    filterSelection("oceania");
});
let safari_button = document.getElementById("safari");
if(safari_button) safari_button.addEventListener("click", function() {
    filterSelection("safari");
});
let sea_button = document.getElementById("sea");
if(sea_button) sea_button.addEventListener("click", function() {
    filterSelection("sea");
});
let city_button = document.getElementById("city");
if(city_button) city_button.addEventListener("click", function() {
    filterSelection("city");
});

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
let matching_passwords = false;
let available_username = false;
let username_input = document.getElementById("username");

if(repeated_password) {
    repeated_password.addEventListener("keyup", () => {
        hideInputError(repeated_password);
        if(first_password.value !== repeated_password.value && first_password.value !== "") {
            showInputError(repeated_password, "Le password non corrispondono");
        } else {
            hideInputError(repeated_password);
            matching_passwords = true;
        }
    })
}

if(username_input) {
    username_input.addEventListener("blur", () => {
        hideInputError(username_input);
        if(username_input.value !== "") {
            showInputMessage(username_input, "Controllo se il nome utente è disponibile...");
            isUsernameAvailable(username_input.value).then((value) => {
                if (value) {
                    hideInputError(username_input);
                    available_username = true;
                    showInputMessage(username_input, "Nome utente disponibile");
                } else {
                    hideInputError(username_input);
                    available_username = false;
                    showInputError(username_input, "Il nome utente non è disponibile");
                }
            })
        }
    })
}

function checkPersonalDataForm() {
    if(first_password.value !== "") {
        return checkPasswords() && available_username;
    }
}

function isUsernameAvailable(username) {
    let xml_http = getXMLHttp();
    if(xml_http) {
        xml_http.open("GET", `/sito-viaggi/src/isUsernameAvailable.php?username=${username}`, true);
        xml_http.send(null);
        return new Promise((res, rej) => {
            xml_http.onreadystatechange = function () {
                if(xml_http.readyState === 4) {
                    res(!!xml_http.responseText);
                }
            }
        })
    }
}

function getXMLHttp() {
    let xml_http;
    try{
        xml_http = new XMLHttpRequest();
    } catch (e) {
        try {
            xml_http = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
            try {
                xml_http = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) {
                return false;
            }
        }
    }
    return xml_http;
}

function showInputError(input_element, message) {
    let p = document.createElement("p");
    p.className = "negative-outcome";
    p.appendChild(document.createTextNode(message));
    input_element.parentNode.appendChild(p);
}

function showInputMessage(input_element, message) {
    if(input_element.parentNode.childNodes.length < 2) {
        let p = document.createElement("p");
        p.className = "positive-outcome";
        p.appendChild(document.createTextNode(message));
        input_element.parentNode.appendChild(p);
    }
}

function hideInputError(input_element) {
    input_element.parentNode.childNodes.forEach((node) => {
        if(node.classList && (node.classList.contains("negative-outcome") || node.classList.contains("positive-outcome"))) node.remove();
    });
}

function checkRegistrationForm() {
    return checkPasswords() && available_username;
}

function checkPasswords() {
    return matching_passwords;
}
/*
==========================================
================= ADMIN ==================
==========================================
*/

function checkTravelInsertion() {
    return checkTravelDate();
}

let departure_date_input = document.getElementById("departure-date");
let return_date_input = document.getElementById("return-date");

if(return_date_input && departure_date_input) {
    departure_date_input.addEventListener("blur", () => {
        checkTravelDate();
    });
    return_date_input.addEventListener("blur", () => {
        checkTravelDate();
    });
}

function checkTravelDate() {
    if(departure_date_input && return_date_input) {
        hideInputError(departure_date_input);

        if(departure_date_input.value !== "" && return_date_input.value !== "") {
            let departure_date = new Date(departure_date_input.value);
            let return_date = new Date(return_date_input.value);
            if(departure_date > return_date) {
                showInputError(departure_date_input, "La data di partenza deve essere antecedente alla data di ritorno");
                return false;
            }
        }
    }
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


/*
===========================================
================= PURCHASE ================
===========================================
*/
    let form_purchase = document.getElementById("form-purchase");
    if(form_purchase) {
        checkRadioButton();
    }
    function checkRadioButton(){
        if(document.getElementsByName('travel') && document.getElementsByName('hotel') && document.getElementsByName('airline')){
            let travel = document.getElementsByName('travel');
            let hotel = document.getElementsByName('hotel');
            let airline = document.getElementsByName('airline');
            if(travel.length === 1)
                travel[0].checked = true;
            if(hotel.length === 1)
                hotel[0].checked = true;
            if(airline.length === 1)
                airline[0].checked = true;

        }
    }

    function PurchasePrice(){
        let price = Number(0);

        if(document.getElementsByName('travel') && document.getElementsByName("activity[]")){
            var travel = document.getElementsByName('travel');
            for(i=0; i < travel.length; i++){
                if(travel[i].checked){
                    var travel_value = travel[i].value;
                    var parts_travel = travel_value.toString().split(/=/);
                    price += Number(parts_travel[3]);
                }
            }

            var activity = document.getElementsByName("activity[]");
            for(i=0; i < activity.length; i++){
                if(activity[i].checked){
                    var activity_value = activity[i].value;
                    var parts_activity = activity_value.toString().split(/=/);
                    price += Number(parts_activity[2]);
                }
            }
            document.getElementById("total-price").innerHTML = price;
        }
    }  

/*
===========================================
================= PAYMENT =================
===========================================
*/

function checkPaymentValue(){
    let notError = true;
    if(document.getElementById("name-payment")){  
        let name = document.getElementById("name-payment");
        hideInputError(name);
        let name_value = name.value;
        let ok = true;
        for(i=0; i < name_value.length && ok; i++){
            var x = name_value.charCodeAt(i);
            if(x < 65 || x > 90 && x < 97|| x > 122)
                ok = false;
        }
        if(!ok){
            notError = false;
            showInputError(name, "Inserire un nome valido composto solo da lettere.");
        }
    }
    if(document.getElementById("surname-payment")){
        let surname = document.getElementById("surname-payment");
        hideInputError(surname);
        let surname_value = surname.value;
        let ok = true;
        for(i=0; i < surname_value.length && ok; i++){
            var x = surname_value.charCodeAt(i);
            if(x < 65 || x > 90 && x < 97|| x > 122)
                ok = false;
        }
        if(!ok){
            notError = false;
            showInputError(surname, "Inserire un cognome valido composto solo da lettere.");
        }
    }
    if(document.getElementById("card-payment")){
        let card = document.getElementById("card-payment");
        hideInputError(card);
        let card_value = card.value;
        if(card_value.length != 16){
            notError = false;
            showInputError(card, "Inserire il numero del conto corrente composto da 16 cifre numeriche.");
        }else{
            let ok = true;
            for(i=0; i < 16 && ok; i++){
                var x = card_value.charCodeAt(i);
                if(x < 48 || x > 57)
                    ok = false;
            }
            if(!ok){
                notError = false;
                showInputError(card, "Il conto corrente è composto da sole cifre numeriche");
            }
        }
    }
    if(document.getElementById("cvc-payment")){
        let cvc = document.getElementById("cvc-payment");
        hideInputError(cvc);
        let cvc_value = cvc.value;
        if(cvc_value.length != 3){
            notError = false;
            showInputError(cvc, "Inserire il codice di sicurezza della carta (cvc) composto da 3 cifre numeriche.");
        }else{
            let ok = true;
            for(i=0; i < 3 && ok; i++){
                var x = cvc_value.charCodeAt(i);
                if(x < 48 || x > 57)
                    ok = false;
            }
            if(!ok){
                notError = false;
                showInputError(cvc, "Il codice di sicurezza della carta (cvc) è composto da sole cifre numeriche");
            }
        }
    }
    if(document.getElementById("expiration-payment")){
        let expiration = document.getElementById("expiration-payment");
        hideInputError(expiration);
        let expiration_value = expiration.value;
        let year = new Date().getFullYear();
        let month = new Date().getMonth();
        let expiration_splitted = expiration_value.split("-");
        if(expiration_splitted[0] < year || expiration_splitted[0] == year && expiration_splitted[1] < (month+1)){
            notError = false;
            showInputError(expiration, "La data di scadenza della carta non è valida");
        }
    }
    return notError;
}
