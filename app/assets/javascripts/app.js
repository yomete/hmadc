/**
 * Created by Yomi on 19/11/2016.
 */
window.onload = function() {
    var text = document.getElementById("dollar").innerHTML;

    function niceFormatting () {
        var removeStars = text.substring(0, 9);
        var removeBuy = removeStars.substring(6, 9);
        document.getElementById("dollar").innerHTML = removeBuy;
    }
    niceFormatting()
};
