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
let matching_passwords = false;
let available_username = false;
let username_input = document.getElementById("username");

if(repeated_password) {
    repeated_password.addEventListener("keyup", () => {
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
    if(input_element.parentNode.childNodes.length < 2) {
        let p = document.createElement("p");
        p.className = "negative-outcome";
        p.appendChild(document.createTextNode(message));
        input_element.parentNode.appendChild(p);
    }
}

function showInputMessage(input_element, message) {
    if(input_element.parentNode.childNodes.length < 2) {
        let p = document.createElement("p");
        p.appendChild(document.createTextNode(message));
        input_element.parentNode.appendChild(p);
    }
}

function hideInputError(input_element) {
    if(input_element.parentNode.childNodes.length === 2) {
        input_element.parentNode.childNodes[1].remove();
    }
}

function checkRegistrationForm() {
    return checkPasswords() && available_username;
}

function checkPasswords() {
    return matching_passwords;
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
    function checkRadioButton(){
        if(document.getElementsByName('travel') && document.getElementsByName('hotel') && document.getElementsByName('airline')){
            var travel = document.getElementsByName('travel');
            var hotel = document.getElementsByName('hotel');
            var airline = document.getElementsByName('airline');
            if(travel.length == 1)
                travel[0].checked = true;
            if(hotel[0].length == 1)
                hotel.checked = true;
            if(airline[0].length == 1)
                airline.checked = true;

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
    if(document.getElementById("name-payment")){  
        let name = document.getElementById("name-payment");
        ok = true;
        for(i=0; i < name.length && ok; i++){
            var x = name.charAt(i);
            if(x < 65 || x > 90 && x < 97|| x > 122)
                ok = false;
        }
        if(!ok){
            showInputError(name, "Inserire un nome valido composto solo da lettere.");
        }else{
            hideInputError(name);
        }
    }
    if(document.getElementById("surname-payment")){
        ok = true;
        for(i=0; i < surname.length && ok; i++){
            var x = surname.charAt(i);
            if(x < 65 || x > 90 && x < 97|| x > 122)
                ok = false;
        }
        if(!ok){
            showInputError(surname, "Inserire un cognome valido composto solo da lettere.");
        }else{
            hideInputError(surname);
        }
    }
    if(document.getElementById("card-payment")){
        let card = document.getElementById("card-payment");
        if(card.length != 16){
            showInputError(card, "Inserire il numero del conto corrente composto da 16 cifre numeriche.");
        }else{
            hideInputError(card);
            ok = true;
            for(i=0; i < 16 && ok; i++){
                var x = card.charAt(i);
                if(x < 48 || x > 57)
                    ok = false;
            }
            if(!ok)
                showInputError(card, "Il conto corrente è composto da sole cifre numeriche");
        }
    }
    if(document.getElementById("cvc-payment")){
        let cvc = document.getElementById("cvc-payment");
        if(cvc.length != 3){
            showInputError(cvc, "Inserire il codice di sicurezza della carta (cvc) composto da 3 cifre numeriche.");
        }else{
            hideInputError(cvc);
            ok = true;
            for(i=0; i < 3 && ok; i++){
                var x = cvc.charAt(i);
                if(x < 48 || x > 57)
                    ok = false;
            }
            if(!ok)
                showInputError(cvc, "Il codice di sicurezza della carta (cvc) è composto da sole cifre numeriche");
        }
    }
    if(document.getElementById("expiration-payment")){
        let expiration = document.getElementById("expiration-payment");
        let year = new Date().getFullYear();
        let month = new Date().getMonth();
        let expiration_splitted = expiration.split(/-/);
        if(expiration_splitted[0] < year || expiration_splitted[0] == year && expiration_splitted[1] < (month+1)){
            showInputError(expiration, "La data di scadenza della carta non è valida");
        }else{
            hideInputError(expiration);
        }
    }
}
