Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get 'movie_with_same_director/:title' => 'movies#same_director', as: :search_same_director_movie
end
