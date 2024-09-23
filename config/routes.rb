Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", {controller: "misc", action: "all_directors"})

  get("/directors/youngest", {controller: "misc", action: "youngest_director"})

  get("/directors/eldest", {controller: "misc", action: "eldest_director"})

  get("/directors/:id", {controller: "misc", action: "director_by_id"})

  get("/movies", {controller: "misc", action: "all_movies"})

  get("/movies/:id", {controller: "misc", action: "movie_by_id"})

  get("/actors", {controller: "misc", action: "all_actors"})

  get("/actors/:id", {controller: "misc", action: "actor_by_id"})
end
