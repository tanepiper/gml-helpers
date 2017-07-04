/// @description An Elite-like Random name generator.  Based on an example from https://github.com/rubo77/eliteNameGen
/// @param seed An array of 3 numbers 
/// @author Tane Piper <piper.tane@gmail.com>
/// @licence MIT

// Letters used to generate the names.
var digrams =
  "ABOUSEITILETSTONLONUTHNO" +
  "..LEXEGEZACEBISO" +
  "USESARMAINDIREA." +
  "ERATENBERALAVETI" +
  "EDORQUANTEISRION" +
  "ABOUSEITILETSTONLONUTHNO" + 
  "FIMHUGOKGREAMUG";

// argument0 is an array of 3 numbers, eg [1, 2, 3]
var seed = argument0;

var pairs = string_copy(digrams, 24, string_length(digrams));

var name = "";

var pair1, pair2, pair3, pair4, pair5;
var longname, verylongname;
// We only use seed 0 and 2 in this script, and we use the tweekseed script to move seeds around
longname = seed[0] & 64;
verylongname = seed[0] & 64;

pair1 = 2 * ((seed[2] / 256) & 31);
tweekseed(seed);
pair2 = 2 * ((seed[2] / 256) & 31);
tweekseed(seed);
pair3 = 2 * ((seed[2] / 256) & 31);
tweekseed(seed);
pair4 = 2 * ((seed[2] / 256) & 31);
tweekseed(seed);
pair5 = 2 * ((seed[2] / 256) & 31);
tweekseed(seed);

name += string_char_at(pairs, pair1);
name += string_char_at(pairs, pair1 + 1);
name += string_char_at(pairs, pair2);
name += string_char_at(pairs, pair2 + 1);
name += string_char_at(pairs, pair3);
name += string_char_at(pairs, pair3 + 1);

if (longname or verylongname) {
	name += string_char_at(pairs, pair4);
	name += string_char_at(pairs, pair4 + 1);
}
if(verylongname) {
	name += string_char_at(pairs, pair5);
  name += string_char_at(pairs, pair5 + 1);
}

name = string_replace_all(name, ".", "");  // Cleans up any dots used to generate unique start of names

return name;
