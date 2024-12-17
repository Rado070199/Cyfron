function toggleMenu() {
    const menu = document.getElementById("menu");
    menu.style.display = menu.style.display === "block" ? "none" : "block";
}

function togglMenu() {
    const menu = document.getElementById("menu");
    menu.style.display = menu.style.display === "block" ? "none" : "block";
}

/* ScrollBar */
$(window).scroll(function() {
    var windowsScroll = $(window).scrolltop();
    console.log(windowsScroll);
    var height = $(document).height() - $(window).height()
    var scrolled = (windowsScroll / height) * 100;
    $("#scrollBar").css("width", scrolled + "%");
});