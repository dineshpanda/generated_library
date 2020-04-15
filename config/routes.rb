Rails.application.routes.draw do
  # Routes for the Book resource:

  # CREATE
  get("/books/new", { :controller => "books", :action => "new_form" })
  post("/create_book", { :controller => "books", :action => "create_row" })

  # READ
  get("/books", { :controller => "books", :action => "index" })
  get("/books/:id_to_display", { :controller => "books", :action => "show" })

  # UPDATE
  get("/books/:prefill_with_id/edit", { :controller => "books", :action => "edit_form" })
  post("/update_book/:id_to_modify", { :controller => "books", :action => "update_row" })

  # DELETE
  get("/delete_book/:id_to_remove", { :controller => "books", :action => "destroy_row" })

  #------------------------------

  # Routes for the Visitor entry resource:

  # CREATE
  get("/visitor_entries/new", { :controller => "visitor_entries", :action => "new_form" })
  post("/create_visitor_entry", { :controller => "visitor_entries", :action => "create_row" })

  # READ
  get("/visitor_entries", { :controller => "visitor_entries", :action => "index" })
  get("/visitor_entries/:id_to_display", { :controller => "visitor_entries", :action => "show" })

  # UPDATE
  get("/visitor_entries/:prefill_with_id/edit", { :controller => "visitor_entries", :action => "edit_form" })
  post("/update_visitor_entry/:id_to_modify", { :controller => "visitor_entries", :action => "update_row" })

  # DELETE
  get("/delete_visitor_entry/:id_to_remove", { :controller => "visitor_entries", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
