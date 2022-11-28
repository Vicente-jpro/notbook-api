Rails.application.routes.draw do
  resources :kinds
  resources :contacts do 
    resource :kind, only: [:show]
    resource :phone, only: [:show, :update, :create]
    resource :address, only: [:show, :update, :create]
  end

end
