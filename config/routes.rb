Rails.application.routes.draw do
    match("/flexible/square/:zebra", { :controller => "calc", :action => "flex_square", :via => "get"})
    
    match("/square/new", { :controller => "calc", :action => "square_form", :via => "get" })
    
    match("/square/results/", { :controller => "calc", :action => "process_square_form", :via => "get"})
end
