Rails.application.routes.draw do
  get "/items", to: "items#index"
  get "/items/new", to: "items#new"
  post "/items/create", to: "items#create"
  get "/items/:id", to: "items#show"
  get "/items/edit/:id", to: "items#edit"
  post "/items/update/:id", to: "items#update"
  get "/items/delete/:id", to: "items#delete"
end
