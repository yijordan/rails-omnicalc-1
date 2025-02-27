Rails.application.routes.draw do
  get("/", { :controller => "calc", :action => "square"})

  get("/square/new", { :controller => "calc", :action => "square"})

end
