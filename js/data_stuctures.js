var colors = ["blue", "grey", "pink", "black", "brown"];
var horse_names = ["ed", "kingsley", "Allen", "Buck", "silver"];

var horse_hash = function (horses, colors){
  var horses_colors = {};
  

  for (i = 0; i < horses.length; i++) {
    horses_colors[horses[i]] = colors[i];
    
  
  
}
return horses_colors;
}

horse_hash(horse_names, colors);