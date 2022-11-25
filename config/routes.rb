Rails.application.routes.draw do
  resources :kinds
  resources :contacts do 
    resource :kind, only: [:show]
    resource :phone, only: [:show]
    resource :address, only: [:show]
  end

end
