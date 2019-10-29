class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.movie_with_same_director(movie_title)
    this_movie = Movie.find_by(title: movie_title)
    this_director = this_movie.director
    if this_director.nil? or this_director.blank?
      return nil
    end
    result = Movie.where(director: this_director).pluck(:title)
    return result
  end
end
