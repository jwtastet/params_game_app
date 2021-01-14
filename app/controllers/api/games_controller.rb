class Api::GamesController < ApplicationController
  def games_method
    # initialize something to give view for render
    @output_message = []
    #checks boolean value of name, only continues name if true
    if params["name"]
      name = params["name"]
      @output_message << "Your name is #{name.upcase}."
      if name[0].upcase == "A"
        @output_message << "Hey! Your name starts with the first letter of the alphabet!"
      end
    end
    #begin number guess game, checks boolean value of num, only continues if true
    if params["number_game"]
      num = params["number_game"].to_i
      winner = 77
      #checks if number is too low
      if num < winner
        @output_message << "Your number is #{num} and it is too low."
        #checks if number is too high
      elsif num > winner
        @output_message << "Your number is #{num} amd it is too high."
        # checks if number is just right
      elsif num == winner
        @output_message << "You guessed it! You win!"
      end
    end
    #required render, from universal views
    render "games_views.json.jb"
  end
end
