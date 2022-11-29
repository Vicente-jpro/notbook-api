Rails.application.routes.draw do
  resources :kinds
  resources :contacts do 
    resource :kind, only: [:show]
    

    resource :phones, only: [:show]
    resource :phone, only: [:show, :update, :create, :destroy]

    resource :address, only: [:show, :update, :create, :destroy]
  end

end
