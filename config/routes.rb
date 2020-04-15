Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "visitor_entries#index"
  # Routes for the Photo resource:

  # CREATE
  get("/photos/new", { :controller => "photos", :action => "new_form" })
  post("/create_photo", { :controller => "photos", :action => "create_row" })

  # READ
  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:id_to_display", { :controller => "photos", :action => "show" })

  # UPDATE
  get("/photos/:prefill_with_id/edit", { :controller => "photos", :action => "edit_form" })
  post("/update_photo/:id_to_modify", { :controller => "photos", :action => "update_row" })

  # DELETE
  get("/delete_photo/:id_to_remove", { :controller => "photos", :action => "destroy_row" })
  get("/delete_photo_from_book/:id_to_remove", { :controller => "photos", :action => "destroy_row_from_book" })

  #------------------------------

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
  get("/delete_book_from_author/:id_to_remove", { :controller => "books", :action => "destroy_row_from_author" })

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
  get("/delete_visitor_entry_from_book/:id_to_remove", { :controller => "visitor_entries", :action => "destroy_row_from_book" })
  get("/delete_visitor_entry_from_user/:id_to_remove", { :controller => "visitor_entries", :action => "destroy_row_from_user" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
