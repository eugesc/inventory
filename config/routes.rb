Rails.application.routes.draw do
	root to: "pages#index"	

  get "/items", to: "items#index"
  get "/items/new", to: "items#new"
  post "/items/create", to: "items#create"
  get "/items/:id", to: "items#show"
  get "/items/edit/:id", to: "items#edit"
  post "/items/update/:id", to: "items#update"
  get "/items/delete/:id", to: "items#delete"

	get "/api/v1/items", to: "items#items_json"

	get "/categories", to: "categories#index"
	get "/categories/new", to: "categories#new"
	post "/categories/create", to: "categories#create"
	get "/categories/:id", to: "categories#show"
	get "/categories/delete/:id", to: "categories#delete"
	get "/categories/edit/:id", to: "categories#edit"
	post "/categories/update/:id", to: "categories#update"
end
