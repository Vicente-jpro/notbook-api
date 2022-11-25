Rails.application.routes.draw do
  resources :kinds
  resources :contacts do 
    resource :kind
  end

end
