Rails.application.routes.draw do
  get("/", { :controller => "calc", :action => "square_form"})

  get("/square/new", { :controller => "calc", :action => "square_form"})

end
