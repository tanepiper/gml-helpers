# gml helpers
A collection of my helpers for Game Maker Studio 2. These are scripts that provide features I need but I'm happy to share.

## Helpers

### `is_prime(number)`
Returns `true` (1) if the number is a [prime number](https://en.wikipedia.org/wiki/Prime_number), or `false` (0)

### `seed_name_generator(seed[number, number, number])`
Returns a `string` value for a name. Based on Elite-style system naming currently (looking to expand in the future with possibly using resource files).  My current default value is `10000` for the seed numbers.  I generate them like this:

```gml
seed = [];
randomize();
seed[0] = random(10000);
randomize()
seed[1] = random(10000);
randomize()
seed[2] = random(10000);

name = name_generator(seed);
```

### `string_split(string, splitter)`
Returns an array from a string based on the passed splitter, for example:

```gml
string_split("Hello,There", ",") // returns ["Hello", "There"]
```

### `tweekseed(seed[number, number, number])`
Helper for `seed_name_generator`, takes an array of 3 numbers, generates a new number. It then shifts the array by 1, removing the first, moving the second and replacing the third.
