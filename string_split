/// @description Splits a string to an Array. Based on https://www.reddit.com/r/gamemaker/comments/3zxota/splitting_strings/cyq4uk6/?st=j4pxq01v&sh=74f1c6c2
/// @param string The string to split into an array
/// @param splitter The string to split on in the array, pass empty string to split all characters
/// @author Tane Piper <piper.tane@gmail.com>
/// @licence MIT

var string_to_split = argument0; //string to split
var string_splitter = argument1; //string to split the first string by

var slot = 0;
var splits; //array to hold all splits
var str2 = ""; //var to hold the current split we're working on building

var i;
for (i = 1; i < (string_length(string_to_split)+1); i++) {
    var currStr = string_copy(string_to_split, i, 1);
    if (currStr == string_splitter) {
        splits[slot] = str2; //add this split to the array of all splits
        slot++;
        str2 = "";
    } else {
        str2 = str2 + currStr;
        splits[slot] = str2;
    }
}

return splits;
