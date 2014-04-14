window.onload = init;

function init() {
    var clicks = document.getElementsByClassName("dif");
    for (var i = 0; i < clicks.length; i++){
        clicks[i].addEventListener("click", box, false);
    }
}

function box() {
    var thisbox = document.getElementById("b"+this.id);
        if(thisbox.style.display == 'none'){
            thisbox.style.display = 'block';
        }
        else{
            thisbox.style.display = 'none';
        }
}