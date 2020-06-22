<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![Run on Repl.it](https://repl.it/badge/github/rammazzoti2000/tic-toc-toe)](https://repl.it/@AlexandruBangau/tic-toc-toe)

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/rammazzoti2000/tic-toc-toe">
    <img src="images/microverse.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Tic Tac Toe</h3>

  <p align="center">
    This project is part of the Microverse curriculum in Ruby module!
    <br />
    <a href="https://github.com/rammazzoti2000/tic-toc-toe"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://repl.it/@AlexandruBangau/tic-toc-toe">View Demo</a>
    ·
    <a href="https://github.com/rammazzoti2000/tic-toc-toe/issues">Report Bug</a>
    ·
    <a href="https://github.com/rammazzoti2000/tic-toc-toe/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
  * [Live Version](#live-version)
  * [Usage](#usage)
  * [Automated Test](#automated-test)
* [Game Rules](#game-rules)
* [Contributors](#contributors)
* [Contributing](#contributing)
* [Acknowledgements](#acknowledgements)
* [License](#license)

<!-- ABOUT THE PROJECT -->
## About The Project

This is the Microverse Tic-tak-toe project. In this project user can play game on the command line where two human players can play against each other and the board is displayed in between turns

[![Product Name Screen Shot][product-screenshot]](https://repl.it/@AlexandruBangau/tic-toc-toe)


### Built With
This project was built using these technologies.
* Ruby
* Rubocop
* VsCode

<!-- ABOUT THE PROJECT -->
## Usage

To play this game you need to:
* have ruby installed in your computer
* [download](https://github.com/rammazzoti2000/tic-toc-toe/archive/master.zip) or clone this repo:
  - Clone with SSH:
  ```
    git@github.com:rammazzoti2000/tic-toc-toe.git
  ```
  - Clone with HTTPS
  ```
    https://github.com/rammazzoti2000/tic-toc-toe.git
  ```
* and execute bin/main.rb file using your terminal

<!-- AUTOMATED TEST -->
## Automated Test

To run the test you need to cd into the tic-tac-toe diretory and run:

```rspec spec/```

## Game Rules

  * This is a customized version of the original [tic-tac-toe](https://en.wikipedia.org/wiki/Tic-tac-toe) game. Tha basic rules remain unchanged, the tokens to play with have changed instead.

  * The game is played on a 3 by 3 grid
  ```
      1  |   2   |   3    
    ----------------------
      4  |   5   |   6    
    ----------------------
      7  |   8   |   9    
  ```

  * The tokens you will play with in this game version will be "rum" and "vodka". While the first player will have the option to choose from the given tokens, the second player will have the token automatically assigned.
  * Each player will take turns putting their assigned token in empty squares.
    ```
      Player 1 turn - "rum"

          rum  |   2   |   3  
        ----------------------
           4   |   5   |   6  
        ----------------------
           7   |   8   |   9  

      Player 2 turn - "vodka"

         rum  |   2   |   3  
        ----------------------
           4  |   5   |   6  
        ----------------------
        vodka |   8   |   9  
    ```
    * The first player to get 3 tokens in a row (up, down, across, or diagonally) wins.
    ```
        Winning combinations (W is either "rum" or "vodka").

          W | W | W    1 | 2 | 3     1 | 2 | 3     W | 2 | 3     1 | W | 3     1 | 2 | W     W | 2 | 3     1 | 2 | W 
         -----------  -----------   -----------  -----------    -----------   -----------   -----------   -----------
          4 | 5 | 6    W | W | W     4 | 5 | 6     W | 5 | 6     4 | W | 6     4 | 5 | W     4 | W | 6     4 | W | 6 
         -----------  -----------   -----------  -----------    -----------   -----------   -----------   -----------
          7 | 8 | 9    7 | 8 | 9     W | W | W     W | 8 | 9     7 | W | 9     7 | 8 | W     7 | 8 | W     W | 8 | 9 
    ```
    * When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends and nobody wins.

      ```
          rum  | vodka |  rum  
        ----------------------
          rum  | vodka | vodka 
        ----------------------
         vodka |  rum  |  rum  
      ```

<!-- LIVE VERSION -->
## Live version

You can see it working [here](https://repl.it/@AlexandruBangau/tic-toc-toe)

<!-- CONTACT -->
## Contributors

👤 **Jaspreet Singh** 
    
- LinkedIn: [Jaspreet Singh](https://www.linkedin.com/in/jaspreet-singh-a28286146/) - 
- GitHub: [@jaspreet-singh-sahota](https://github.com/jaspreet-singh-sahota)
- E-mail: jaspreetsinghjassi01@gmail.com
- [Portfolio](https://jaspreet-singh-portfolio.netlify.app/)

👤 **Alexandru Bangau**

- LinkedIn: [Alexandru Bangau](https://www.linkedin.com/in/alexandru-bangau/)
- GitHub: [@rammazzoti2000](https://github.com/rammazzoti2000)
- E-mail: bangau.alexandru@gmail.com

## :handshake: Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/rammazzoti2000/tic-toc-toe/issues).

## Show your support

Give a :star: if you like this project!


<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Microverse](https://www.microverse.org/)
* [The Odin Project](https://www.theodinproject.com/)
* [Ruby Documentation](https://www.ruby-lang.org/en/documentation/)
* [tic-tac-toe](https://en.wikipedia.org/wiki/Tic-tac-toe)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/rammazzoti2000/tic-toc-toe.svg?style=flat-square
[contributors-url]: https://github.com/rammazzoti2000/tic-toc-toe/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/rammazzoti2000/tic-toc-toe.svg?style=flat-square
[forks-url]: https://github.com/rammazzoti2000/tic-toc-toe/network/members
[stars-shield]: https://img.shields.io/github/stars/rammazzoti2000/tic-toc-toe.svg?style=flat-square
[stars-url]: https://github.com/rammazzoti2000/tic-toc-toe/stargazers
[issues-shield]: https://img.shields.io/github/issues/rammazzoti2000/tic-toc-toe.svg?style=flat-square
[issues-url]: https://github.com/rammazzoti2000/tic-toc-toe/issues
[product-screenshot]: images/tic-tac-toe.png

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.
