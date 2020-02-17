Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/campaigns" => "campaigns#index"
    post "/campaigns" => "campaigns#create"
    get "/campaigns/:id" => "campaigns#show"
    patch "/campaigns/:id" => "campaigns#update"
    delete "/campaigns/:id" => "campaigns#destroy"

    get "/characters" => "characters#index"
    post "/characters" => "characters#create"
    get "/characters/:id" => "characters#show"
    patch "/characters/:id" => "characters#update"
    delete "/characters/:id" => "characters#destroy"

    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

  end

end
