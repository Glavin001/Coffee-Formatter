# Coffee-Formatter CLI

## Introduction

CoffeeFormatter CLI (abbreviated as CF-CLI) is a Coffee-Formatter Lib's command-line interface

The code is written in Literate CoffeeScript.  Checkout Wikipedia for what "Literate Programming" means.

## Code

### Dependencies

CF-CLI relies on Coffee-Formatter Lib and optimist

Code:

    formatter = require './formatter'
    optimist = require 'optimist'

### Body

The body of this module does the following:

1. Parse command line.
2. call `formatter` for every file

By default, we use a tab width of 2 and use spaces exclusively.  This is the style most widely used in the community.  For a detailed guide of CoffeeScript style, check out [this](https://github.com/polarmobile/coffeescript-style-guide).

    argv = optimist
      .default('tab-width', 2)
      .default('use-space', true)
      .default('end-of-line', '\n')
      .default('encoding', 'utf8')
      .argv

We loop through `argv._`, which should be a list of filenames given by the user.

    for filename in argv._
      formatter.formatFile(filename, argv['end-of-line'], argv['encoding'])
