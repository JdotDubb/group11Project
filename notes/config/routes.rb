Rails.application.routes.draw do
  get 'notes/index' 
  get 'notes/classListing1'
  get 'notes/createNotes'
  
  resources :notes
  
  root 'welcome#login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
