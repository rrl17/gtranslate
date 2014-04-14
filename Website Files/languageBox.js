window.onload = init;

function init() {
    var clicks = document.getElementsByClassName("dif");
    for (var i = 0; i < clicks.length; i++){
        clicks[i].addEventListener("click", box, false);
    }
}

function box() {
    var thisbox = document.getElementById("b"+this.id);
        if(thisbox.style.display == 'block'){
            thisbox.style.display = 'none';
        }
        else{
            thisbox.style.display = 'block';
        }
}