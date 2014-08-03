# Coffee-Formatter

A formatter for CoffeeScript

## Status

The first version of this project is completed.  I will publish it on npm ASAP.

## Usage

	node lib/cli.js [Your Files]

## Things to note

This project is written in Literate CoffeeScript (extension '.litcoffee'), which is syntax-highlighted by Github at this moment.

To read the code, it's suggested to run `npm install` and `grunt docco`, go to `docs/` folder.
For example, `docs/formatter.html` contains properly highlighted code for `formatter.litcoffee`.

To run the test suite, install devDependencies `npm install` and run `grunt test` in the base directory.

## TODO

1. Get rid of external dependencies.


## License

[WTFPL](http://www.wtfpl.net/about/).
