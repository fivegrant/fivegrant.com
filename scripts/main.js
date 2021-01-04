var last = "null";
function toggler(x) {
  var y = document.getElementById(x).style.display;
  if(last != 'null' && last !== y){
    document.getElementById(last).style.display = 'none';
  }
  if(y === 'none' || y === '' ){
    document.getElementById(x).style.display = 'flex';
  }
  else{
    document.getElementById(x).style.display = 'none';
  }
  last = x;
}

