Rails.application.routes.draw do
  get 'notes/index' 
  get 'notes/class1'
  get 'notes/class1Notes'
  
  resources :notes
  
  root 'welcome#login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
