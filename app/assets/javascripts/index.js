$(document).ready(function(){
    var index = 1;
    function change_background(){
        if (index == 1){
            $('#giphy_carousel').css('background-image',"url('/assets/giphy2.gif')");
            index = 2;
        }
        else if (index == 2){
            $('#giphy_carousel').css('background-image',"url('/assets/giphy3.gif')");
            index = 3;
        }
        else if (index == 3){
            $('#giphy_carousel').css('background-image',"url('/assets/giphy1.gif')");
            index = 1;
        }
    }
    var main_giphy = setInterval(change_background,4000);

});
