Rails.application.routes.draw do
  get("/", {:controller => "page", :action => "home"})
  get("/dice/:param_one/:param_two", { :controller => "page", :action => "dice_roll" })
end
