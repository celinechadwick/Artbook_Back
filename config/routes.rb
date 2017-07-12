Rails.application.routes.draw do

    # root 'searches#index'
    root to: redirect("/searches")

      resources :searches, only: [:index]
        # get '/searches/:search' => 'searches#search'


      resources :users do
          resources :artworks

          collection do
            post "/login" => "users#login"
          end
      end
  end
