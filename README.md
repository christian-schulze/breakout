Breakout
====

Breakout style game written in Ruby, making use of the [Ray](https://github.com/Mon-Ouie/ray) gem.

This is not intended to be a commercial, polished game, merely a personal experiment in simple games programming.

### Installation

The code was developed on a Mac using the following dependencies:

* OS X 10.9.4
* Brew
* RVM
* Ruby 2.1.2

```sh
brew install glew libsndfile
git clone git@github.com:christian-schulze/breakout.git
cd breakout
bundle install

ruby game.rb
```

### TODO

- [X] Keyboard controllable paddle.
- [X] Bouncing ball.
- [X] Ball/Paddle collision detection.
- [X] Title and game over screens (slightly more polish).
- [X] Bricks.
- [X] Ball/Brick collision detection.
- [ ] More angles when ball bounces off paddle and bricks.
- [ ] Levels - ball speed, paddle size, brick strength etc (increasing difficulty).

### License

The MIT License, see [LICENSE](LICENSE).
