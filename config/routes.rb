Rails.application.routes.draw do
  namespace :api do
  
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"


    get "/items" => "items#index"
    post "/items" => "items#create"
    get "/items/:id" => "items#show"
    patch "/items/:id" => "items#update"
    delete "/items/:id" => "items#destroy" 


  end

end
