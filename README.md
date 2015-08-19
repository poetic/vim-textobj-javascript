# Introduction
This plugin provides several handy text objects for javascript.  
You need to install https://github.com/kana/vim-textobj-user first.

# Text Objects
- ac, ic (chunk)  
  A **chunk** is a block of code between the beginning of the line that
  contains '{' and the end of the line that contains the paired '}'
  ```
  // NOTE: the starting and ending of the object is surrounded by []

  // A chuck can be a function definition
  [f]unction () {
    //...
  }[]

  [v]ar x = function () {
    //...
  }[]

  // A chunk can be a hash key and value pair
  var x = {
  [a]: function () {
    //...
  }[]
  ```
- af, if (function)  
  TODO
