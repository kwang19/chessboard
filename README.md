# Chessboard
![](http://ruby-gem-downloads-badge.herokuapp.com/chessboard?style=social&link=https://rubygems.org/gems/chessboard&type=total)

[![Gem Version](https://badge.fury.io/rb/chessboard.svg)](https://badge.fury.io/rb/chessboard)
[![Build Status](https://travis-ci.org/dhrubomoy/chessboard.svg?branch=master)](https://travis-ci.org/dhrubomoy/chessboard)
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/dhrubomoy/chessboard/master/LICENSE.txt)


A ruby gem to generate necessary assets (javascripts, stylesheets and images), controller and view in order to easily include varieties of chessboards in your Ruby on Rails 5 applications. Thanks to chess libraries like [chessboard.js](https://github.com/oakmac/chessboardjs/) and [chess.js](https://github.com/jhlywa/chess.js) and the awesome power of Ruby on Rails, you can add a nice chessboard in your rails 5 application with a single command.

## Table of Contents

* [Installation](#installation)
* [Usage](#usage)
  * [Basic Usage](#basic-usage)
  * [Artificial Intelligence with `include_ai`](#artificial-intelligence-with-include_ai)
  * [Specify `chessboard-type`](#specify-chessboard-type)
  * [Print Help](#print-help)
* [Development](#development)
* [Contributing](#contributing)
* [License](#license)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chessboard'
```

And then execute:

    $ bundle install

## Usage

### Basic Usage

1. After installation run `rails generate chessboard` or `rails g chessboard`
2. Start the rails server `rails server` or `rails s`
3. Open your favourite browser and visit [http://localhost:3000/chessboard](http://localhost:3000/chessboard)

Boom! You have a chessboard in your Rails app. Now play chess with yourself.
![chessboard](https://cloud.githubusercontent.com/assets/12648587/18617936/ef82b3fc-7da9-11e6-8715-791673b37842.png)

### Artificial Intelligence with `include_ai`

Run `rails g chessboard --chessboard-type=include_ai` to have some AI. Otherwise playing with a computer that only makes random moves is no fun and you will always win. So use the `include_ai` option and it will give you some tough fight.

### Specify `chessboard-type`

You can also specify the `chessboard-type` to generate different chessboards. So far the available chessboard types are following:

1. `only_legal_moves`
2. `play_random_computer`
3. `include_ai`
3. `empty_board`
4. `random_vs_random`
5. `highlight_legal_moves`
6. `piece_highlighting_1`
7. `piece_highlighting_2`

For example, run `rails g chessboard --chessboard-type=play_random_computer` to play with computer that will only make stupid random moves.

### Print Help

Run `rails g chessboard --help` to print following:

```
Usage:
  rails generate chessboard [CHESSBOARD_NAME] [options]

Options:
  [--skip-controller], [--no-skip-controller]  # Skip including chessboard controller.
  [--skip-route], [--no-skip-route]            # Skip adding route for chessboard in your config/route.rb
  [--skip-view], [--no-skip-view]              # Skip including chessboard view (.html.erb file).
  [--chessboard-type=CHESSBOARD_TYPE]          # Specify what type of chessboard you want in your view. 
                                                  Available options:
                                                    include_ai
                                                    only_legal_moves
                                                    play_random_computer
                                                    empty_board
                                                    random_vs_random
                                                    highlight_legal_moves
                                                    piece_highlighting_1
                                                    piece_highlighting_2
                                               # Default: only_legal_moves

Runtime options:
  -f, [--force]                    # Overwrite files that already exist
  -p, [--pretend], [--no-pretend]  # Run but do not make any changes
  -q, [--quiet], [--no-quiet]      # Suppress status output
  -s, [--skip], [--no-skip]        # Skip files that already exist

Description:
    Generates controller, view, javascripts and stylesheets for a chessboard.

Example:
    rails generate chessboard

    This will create:
        vendor/assets/javascript/chess.min.js
        vendor/assets/javascript/chessboard-0.3.0.min.js
        vendor/assets/stylesheets/chessboard-0.3.0.min.css
        app/controllers/chessboard_controller.rb
        app/assets/images/chesspieces/<Images>.png
        app/views/chessboard/chessboard.html.erb
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dhrubomoy/chessboard. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

