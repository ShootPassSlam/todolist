Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :todos, path: "/"
  # delete "/" => "todos#destroy_all"

    post "/" => "todos#create"
    delete "/" => "todos#destroy_all"
    get "/:id" => "todos#show"
    patch "/:id" => "todos#update"
    delete "/:id" => "todos#destroy"
    root 'todos#index'
end
