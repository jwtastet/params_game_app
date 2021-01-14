class Api::GamesController < ApplicationController
  def games_method
    @output_message = []
    if params["name"]
      name = params["name"]
      if name
        @output_message << "Your name is #{name.upcase}."
        if name[0].upcase == "A"
          @output_message << "Hey! Your name starts with the first letter of the alphabet!"
        end
      end
      num = params["num"].to_i
      winner = 77
      if num
        if num < winner
          @output_message << "Your number is #{num} and it is too low."
        elsif num > winner
          @output_message << "Your number is #{num} amd it is too high."
        elsif num == winner
          @output_message << "You guessed it! You win!"
        end
      end
    end
    render "games_views.json.jb"
  end
end
