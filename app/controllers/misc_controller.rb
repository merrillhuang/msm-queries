class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def all_directors
    @directors = Director.all

    render({template: "misc_templates/all_directors"})
  end

  def director_by_id
    @director_id = params.fetch("id").to_i
    @director = Director.where({id: @director_id}).at(0)

    @directed_movies = Movie.where({director_id: @director_id})

    render({template: "misc_templates/director_by_id"})
  end

  def youngest_director
    @youngest_director = Director.order("dob DESC").at(0)

    render({template: "misc_templates/youngest_director"})
  end

  def eldest_director
    @eldest_director = Director.order("dob ASC").where.not({dob: nil}).at(0)

    render({template: "misc_templates/eldest_director"})
  end

  def all_movies
    @movies = Movie.all

    render({template: "misc_templates/all_movies"})
  end

  def movie_by_id
    @movie_id = params.fetch("id").to_i
    @movie = Movie.where({id: @movie_id}).at(0)
    @director = Director.where({id: @movie.director_id}).at(0)
    
    render({template: "misc_templates/movie_by_id"})
  end

  def all_actors
    @actors = Actor.all

    render({template: "misc_templates/all_actors"})
  end

  def actor_by_id
    @actor_id = params.fetch("id").to_i
    @actor = Actor.where({id: @actor_id}).at(0)

    @roles = Character.where({actor_id: @actor_id})

    render({template: "misc_templates/actor_by_id"})
  end
end
