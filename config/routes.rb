Rails.application.routes.draw do

  devise_for :users, :skip => [:sessions, :registrations]
  

  devise_scope :user do
   root to: "static#home"
   get    "login",  to: "devise/sessions#new",         as: :new_user_session
   post   "login",  to: "devise/sessions#create",      as: :user_session
   delete "logout", to: "devise/sessions#destroy",     as: :destroy_user_session

   get    "sign-up",  to: "devise/registrations#new",    as: :new_user_registration
   post   "sign-up",  to: "devise/registrations#create", as: :user_registration

end

  scope "/admin", module: :admin do
    resources :series do
        resources :videos
    end
  end

  get "admin", to: "admin/series#index"

  scope module: :users do
    get "/series", to: "series#index", as: :user_series_index
    get "/series/:id", to: "series#show", as: :user_series
    get "/watch/:id", to: "videos#show", as: :user_video
  end

end
