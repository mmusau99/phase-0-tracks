/*
I want to pass an array to a function that checks 
the length of each string within an array, and returns the string with the longest length. 
I want to use an empty array and push the value of the longest word in the first index.
*/

var longest_String = function (array) {
  var array_length_1 = 0;
  var longest_word = [];
  for( i = 0; i < array.length; i++){
    
      if (array[i] > array[i+1]) {
        array_lenght_1 = array[i].length;
        longest_word[0] = array[i];
      }
      
  }
  console.log(longest_word);
  return longest_word;
}
var long_array = ["long phrase","longest phrase","longer phrase"];
longest_String(long_array);