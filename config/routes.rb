Rails.application.routes.draw do
  # Routes for the Restaurant_owner resource:
  # CREATE
  get "/restaurant_owners/new", :controller => "restaurant_owners", :action => "new"
  post "/create_restaurant_owner", :controller => "restaurant_owners", :action => "create"

  # READ
  get "/restaurant_owners", :controller => "restaurant_owners", :action => "index"
  get "/restaurant_owners/:id", :controller => "restaurant_owners", :action => "show"

  # UPDATE
  get "/restaurant_owners/:id/edit", :controller => "restaurant_owners", :action => "edit"
  post "/update_restaurant_owner/:id", :controller => "restaurant_owners", :action => "update"

  # DELETE
  get "/delete_restaurant_owner/:id", :controller => "restaurant_owners", :action => "destroy"
  #------------------------------

  # Routes for the Restaurant_photo resource:
  # CREATE
  get "/restaurant_photos/new", :controller => "restaurant_photos", :action => "new"
  post "/create_restaurant_photo", :controller => "restaurant_photos", :action => "create"

  # READ
  get "/restaurant_photos", :controller => "restaurant_photos", :action => "index"
  get "/restaurant_photos/:id", :controller => "restaurant_photos", :action => "show"

  # UPDATE
  get "/restaurant_photos/:id/edit", :controller => "restaurant_photos", :action => "edit"
  post "/update_restaurant_photo/:id", :controller => "restaurant_photos", :action => "update"

  # DELETE
  get "/delete_restaurant_photo/:id", :controller => "restaurant_photos", :action => "destroy"
  #------------------------------

  # Routes for the Restaurants_and_tag resource:
  # CREATE
  get "/restaurants_and_tags/new", :controller => "restaurants_and_tags", :action => "new"
  post "/create_restaurants_and_tag", :controller => "restaurants_and_tags", :action => "create"

  # READ
  get "/restaurants_and_tags", :controller => "restaurants_and_tags", :action => "index"
  get "/restaurants_and_tags/:id", :controller => "restaurants_and_tags", :action => "show"

  # UPDATE
  get "/restaurants_and_tags/:id/edit", :controller => "restaurants_and_tags", :action => "edit"
  post "/update_restaurants_and_tag/:id", :controller => "restaurants_and_tags", :action => "update"

  # DELETE
  get "/delete_restaurants_and_tag/:id", :controller => "restaurants_and_tags", :action => "destroy"
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  get "/tags/:id", :controller => "tags", :action => "show"

  # UPDATE
  get "/tags/:id/edit", :controller => "tags", :action => "edit"
  post "/update_tag/:id", :controller => "tags", :action => "update"

  # DELETE
  get "/delete_tag/:id", :controller => "tags", :action => "destroy"
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # Routes for the Restaurant resource:
  # CREATE
  get "/restaurants/new", :controller => "restaurants", :action => "new"
  post "/create_restaurant", :controller => "restaurants", :action => "create"

  # READ
  get "/restaurants", :controller => "restaurants", :action => "index"
  get "/restaurants/:id", :controller => "restaurants", :action => "show"

  # UPDATE
  get "/restaurants/:id/edit", :controller => "restaurants", :action => "edit"
  post "/update_restaurant/:id", :controller => "restaurants", :action => "update"

  # DELETE
  get "/delete_restaurant/:id", :controller => "restaurants", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
