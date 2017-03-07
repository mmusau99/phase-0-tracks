/*
I want to pass an array to a function that checks 
the length of each string within an array, and returns the string with the longest length. 
I want to use an empty array and push the value of the longest word in the first index.
*/

var longest_String = function (array) {
  var array_length_1 = 0;
  var longest_word = [];

  for( i = 0; i < array.length; i++){
    if (i == array.length -1) {
    break;
    }
    else if (array[i].length > array[i+1].length) {
        array_lenght_1 = array[i].length;
        longest_word[0] = array[i];
      }
      
      
  }
  
  console.log(longest_word);
  return longest_word;
}
var long_array = ["long phrase","longest phrase","longer phrase"];
var long_array_test_1 = ["blue","bluer","bluest","bluerestest", "blugger"];
longest_String(long_array);
longest_String(long_array_test_1);



/*
i need to create a method that matches key value pairs. I will also need another method to create hashes and match them to objects. 
to avoid ambiguity I'll set my match method to account for name and ages, too broad a scope won't get me desired results.

*/
var  create_hash = function (name, age) {
  var database = {
    name: name,
    age: age
  }
  return database;
}

var match_hash = function (hash_1, hash_2){
  if (hash_1["name"] == hash_2["name"] || hash_1["age"] == hash_2["age"]){
    return true;
  }
  else {
    return false;
  }
}

object_1 = create_hash("mumo", 54);
object_2 = create_hash("Allen", 27);
object_3 = create_hash("Kingsly", 33);
object_4 = create_hash("Zo", 33);

console.log(match_hash(object_1, object_2));
console.log(match_hash(object_3, object_4));