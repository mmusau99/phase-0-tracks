var colors = ["blue", "grey", "pink", "black", "brown"];
var horse_names = ["ed", "kingsley", "Allen", "Buck", "silver"];

var horse_hash = function (horses, colors){
  var horses_colors = {};
  if (horses.length == colors.length) {

    for (i = 0; i < horses.length; i++) {
    horses_colors[horses[i]] = colors[i];
  }
}
else {
  console.log("The length of the two arrays do not match try again.")
}
return horses_colors;
}

horse_hash(horse_names, colors);

/*
Below is the constructor for a new car
*/

var Car = function (brand, type, miles){
  this.brand = brand;
  this.type = type;
 
  this.miles = miles;
  
 this.turn_on = function() {
    console.log("VROOOOOOOOOOOMMMM!!!!");
    console.log("");
    console.log("A new "+brand +" " + "has been manufactured");
    console.log(" ")
  }
  
}


car_1 = new Car("BMW", "Sedan",30000 );
car_1.turn_on();

car_2 = new Car("Ferrari", "Sports car", 2000);
car_2.turn_on();