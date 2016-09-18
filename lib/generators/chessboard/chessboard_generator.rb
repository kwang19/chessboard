class ChessboardGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :chessboard_name, type: :string, default: 'chessboard'
  class_option :skip_controller, type: :boolean, defalt: false, desc: 'Skip including chessboard controller.'
  class_option :skip_route, type: :boolean, default: false, desc: 'Skip adding route for chessboard in your config/route.rb'
  class_option :skip_view, type: :boolean, defalt: false, desc: 'Skip including chessboard view (.html.erb file).'
  class_option :chessboard_type, type: :string, default: 'only_legal_moves', desc: "Specify what type of chessboard you want in your view. 
                                                  Available options:
                                                    only_legal_moves,
                                                    play_random_computer, 
                                                    empty_board, 
                                                    random_vs_random, 
                                                    highlight_legal_moves, 
                                                    piece_highlighting_1, 
                                                    piece_highlighting_2"

  def generate_chessboard_assets
    copy_file 'chess.min.js', 'vendor/assets/javascripts/chess.min.js'
    copy_file 'chessboard-0.3.0.min.js', 'vendor/assets/javascripts/chessboard-0.3.0.min.js'
    copy_file 'chessboard-0.3.0.min.css', 'vendor/assets/stylesheets/chessboard-0.3.0.min.css'
    inject_into_file 'app/assets/stylesheets/application.css', " *= require chessboard-0.3.0.min\n", after: " *= require_self\n"
    inject_into_file 'app/assets/javascripts/application.js', "//= require chessboard-0.3.0.min\n//= require chess.min\n", after: "//= require jquery_ujs\n"
    directory 'chesspieces', "app/assets/images/chesspieces"
  end

  def generate_chessboard_controller
    copy_file 'chessboard_controller.rb', "app/controllers/chessboard_controller.rb" if !options.skip_controller
  end

  def generate_chessboard_view
    if !options.skip_view?
      chessboard_view_path = 'app/views/chessboard/chessboard.html.erb'
      case options.chessboard_type
      when 'empty_board'
        copy_file 'chessboard_empty_board.html.erb', 
      when 'only_legal_moves'
        copy_file 'chessboard_only_legal_moves.html.erb', chessboard_view_path
      when 'play_random_computer'
        copy_file 'chessboard_play_random_computer.html.erb', chessboard_view_path
      when 'random_vs_random'
        copy_file 'chessboard_random_vs_random.html.erb', chessboard_view_path
      when 'highlight_legal_moves'
        copy_file 'chessboard_highlight_legal_moves.html.erb', chessboard_view_path
      when 'piece_highlighting_1'
        copy_file 'chessboard_piece_highlighting_1.html.erb', chessboard_view_path
      when 'piece_highlighting_2'
        copy_file 'chessboard_piece_highlighting_2.html.erb', chessboard_view_path  
    end
  end

  def inject_into_routes
    inject_into_file 'config/routes.rb', "get '/chessboard', to: 'chessboard#chessboard'\n", after: "Rails.application.routes.draw do\n" if !options.skip_routes
  end
end