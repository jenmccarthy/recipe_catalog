Rails.application.routes.draw do
  
  match('/', { :via => :get, :to => 'recipes#index' })
  match('recipes', { :via => :get, :to => 'recipes#index' })
  match('recipes/new', {:via => :get, :to => 'recipes#new' })
   
 
end
