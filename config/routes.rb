Rails.application.routes.draw do

  devise_for :users, :skip => [:sessions, :registrations]
  

  devise_scope :user do
     root to: "home#home"
     get    "login",  to: "devise/sessions#new",         as: :new_user_session
     post   "login",  to: "devise/sessions#create",      as: :user_session
     delete "logout", to: "devise/sessions#destroy",     as: :destroy_user_session
 
     get    "sign-up",  to: "devise/registrations#new",    as: :new_user_registration
     post   "sign-up",  to: "devise/registrations#create", as: :user_registration
  end

 get "admin", to: "admin#index"

end
