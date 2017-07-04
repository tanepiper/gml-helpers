/// @description Method to shift a set of seeds
/// @param seed An array of 3 numbers 
/// @author Tane Piper <piper.tane@gmail.com>
/// @licence MIT


var seed = argument0;

var tmp;

tmp = seed[0] + seed[1] + seed[2];
tmp &= 65535;

seed[@ 0] = seed[1];
seed[@ 1] = seed[2];
seed[@ 2] = tmp;
