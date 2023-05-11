Rails.application.routes.draw do
  root to: "cats#index"

  # Routes for the Cat resource:

  # CREATE
  post("/insert_cat", { :controller => "cats", :action => "create" })

  # READ
  get("/cats", { :controller => "cats", :action => "index" })

  get("/cats/:path_id", { :controller => "cats", :action => "show" })

  # UPDATE

  post("/modify_cat/:path_id", { :controller => "cats", :action => "update" })

  # DELETE
  get("/delete_cat/:path_id", { :controller => "cats", :action => "destroy" })

  #------------------------------

end
