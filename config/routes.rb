Rails.application.routes.draw do
  get("/", { :controller => "calc", :action => "square_form"})

  get("/square/new", { :controller => "calc", :action => "square_form"})

  get("/square_root/new", { :controller => "calc", :action => "sqrt_form"})

  get("/payment/new", { :controller => "calc", :action => "payment_form"})

  get("/random/new", { :controller => "calc", :action => "random_form"})

end
