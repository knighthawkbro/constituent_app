Rails.application.routes.draw do
  resources :contacts
  resources :notes
  resources :constituents do
    get 'calls', on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'constituents#index'
end
