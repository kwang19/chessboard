# Chessboard

A ruby gem to generate necessary assets (javascripts, stylesheets and images), controller and view in order to easily add varieties of chessboards in your Ruby on Rails 5 applications. Thanks to chess libraries like [chessboard.js](https://github.com/oakmac/chessboardjs/) and [chess.js] (https://github.com/jhlywa/chess.js) and awesome power of Ruby on Rails, you can add a nice chessboard in your rails 5 application with literally 3 commands.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chessboard'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install chessboard

## Usage

### Basic Usage

1. After installation run `rails generate chessboard` or `rails g chessboard`
2. Start the rails server `rails server` or `rails s`
3. Open your favourite browser and visit [http://localhost:3000/chessboard](http://localhost:3000/chessboard)

### Print help message

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
                                                    only_legal_moves,
                                                    play_random_computer, 
                                                    empty_board, 
                                                    random_vs_random, 
                                                    highlight_legal_moves, 
                                                    piece_highlighting_1, 
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

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/chessboard. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

