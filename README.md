# Anagrams and Antigrams by Andrew Giang
This project contains a class that will check for anagrams and antigrams. There is a spec file with 8 test cases and a simple script file that will prompt for user inputs in the command line. 

## Technology Used
* _Ruby_
* _Docker_
* _Ruby Gems: rspec, pry_

## Description

 Two words are anagrams if they contain the exact same letters in a different order. For example, "ruby" and "bury" are anagrams because they contain the same letters. For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The class method anagram() will accomplish the following objectives:

* Check if two words are anagrams
* Account for the possibility that words might have different cases but should still be anagrams.
* Check if the inputs are words.
* Check for antigrams
* Account for two sentences being compared as anagrams or "antigrams."

## Set up and Installation

* This project runs on Ruby or Docker. You need to have either application installed on your local machine.
* Download or Clone this directory into your local drive. 
* The repository contains a simple project that tests a simple class that checks for anagram and antigrams. To run tests on the current code, simply run the command `docker-compose up` in the root directory of this project.
* To run tests on your own code, replace the `lib` and `spec` directories with your own source code (for `lib`) and tests (for `spec`). Then run the command `docker-compose up --build` in terminal
* You can create an alias for the following commands. The alias should look something like this:
      
      dspec ()
      {
        docker-compose down
        docker-compose up --build
        docker-compose run --rm app
      }
      
* With this alias, the `dspec` command will automatically run RSpec tests. You can use `binding.pry` as needed.

## Known Bugs

* My script seems to not putting out the prompts for user input.

## License

[MIT](https://en.wikipedia.org/wiki/MIT_License)

## Contact Information

Andrew Giang | giang184@gmail.com