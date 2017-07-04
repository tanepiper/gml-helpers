/// @description Works out if a number is a prime
/// @param number Number to check if it's a prime
/// @author Tane Piper <piper.tane@gmail.com>
/// @licence MIT

var num = argument0;

if (num < 2) {
  return false;
}
if (num == 2) {
  return true;
}
if (num % 2 == 0){ 
  return false;
}
for (var i = 3; i * i <= num; i += 2){
	if (num % i == 0){
		return false;
	}
}
return true;
