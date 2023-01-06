Rails.application.routes.draw do
  root "movies#index"

  # Routes for the Movie resource:

  # CREATE
  post "/movies" => "movies#create" #as movies_path and movies_url
  get "/movies/new" => "movies#new" as :new_movie # as :new_movie_path and new_movie_url
          
  # READ
  get "/movies" => "movies#index" 
  get "/movies/:id" => "movies#show" as :movie # movie_path() needs an argument to populate :id
  
  # UPDATE
  patch "/movies/:id" => "movies#update"
  get "/movies/:id/edit" => "movies#edit" as :movie_edit # movie_edit_path()
  
  # DELETE
  delete "/movies/:id" => "movies#destroy"

  #------------------------------
end
