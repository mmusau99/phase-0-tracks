/*
I want to create a function that accepts a string as a parameter.
this function should take that string and return that string in reverse
i want to iterate over the string until i've reached the lenght of that string
I could create a case where the first index is switched with the last one until the word is reversed.
i could create a counter with the value of the string length and 
*/

var reverse = function (string){
  string_copy = string;
  var string_counter = string.length;
  string = string.split("");
  var reverse_string = string;
  
  for(i=0; i < string.length; i++){
    string[i] = string_copy[string_counter-1];
    string_counter -=1
  }
  
 string = string.toString();
 console.log(string)
return  string;
}

var word = prompt("What word would you like to reverse ?");
reverse(word);
if (1+1 == 2){
  console.log(" ")
  console.log("Hey 1+1 does in fact equal 2. your word is "+ word);
}

