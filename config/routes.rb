Rails.application.routes.draw do
   
   #Square Routes
   
    match("/flexible/square/:zebra", { :controller => "calc", :action => "flex_square", :via => "get"})
    
    match("/square/new", { :controller => "calc", :action => "square_form", :via => "get" })
    
    match("/square/results/", { :controller => "calc", :action => "process_square_form", :via => "get"})
    
    #Square Root Routs
    
    match("/flexible/square_root/:sqrt", { :controller => "calc", :action => "flex_sqrt", :via => "get"})
    
    match("/square_root/new", { :controller => "calc", :action => "sqrt_form", :via => "get" })
    
    match("/square_root/results/", { :controller => "calc", :action => "process_sqrt_form", :via => "get"})
    
    #Payment Routes
    
    match("/flexible/payment/:apr/:term/:principal", { :controller => "calc", :action => "flex_pmt", :via => "get"})
    
    match("/payment/new", { :controller => "calc", :action => "pmt_form", :via => "get" })
    
    match("/payment/results/", { :controller => "calc", :action => "pmt_results", :via => "get"})
    
    #Random Routes
    
    match("/flexible/random/:min/:max", { :controller => "calc", :action => "random", :via => "get"})
    
    match("/random/new", { :controller => "calc", :action => "random_form", :via => "get"})
    
    match("/random/results", { :controller => "calc", :action => "random_results", :via => "get"})

end
