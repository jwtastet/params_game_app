Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/param_games" => "games#games_method"
    #created segment param for number games
    get "/param_games/:number_game" => "games#games_method"
  end
end
