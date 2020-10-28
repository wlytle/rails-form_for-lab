Rails.application.routes.draw do
  resources :students, except: :delete

  resources :school_classes, except: :delete

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
