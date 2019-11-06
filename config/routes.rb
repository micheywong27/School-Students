Rails.application.routes.draw do

  get '/schools', to: "schools#index", as: 'schools'
  get '/schools/ new', to: "schools#new"
  get '/schools/:id', to: "schools#show", as: 'school'
  post '/schools', to: "schools#create"

  get 'students', to: "students#index", as: 'students'
  get 'students/new', to: "students#new", as: 'new_student'
  get 'students/:id', to: "students#show", as: 'student'
  delete 'students/:id', to: "students#delete", as: 'delete_student'
  post 'students', to: "students#create"
  get 'students/:id/edit', to: "students#edit", as: 'edit_student'
  patch 'students/:id', to: "students#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
