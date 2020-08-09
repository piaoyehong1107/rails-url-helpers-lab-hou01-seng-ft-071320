Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  resources :students, only: [:index, :show]
  get '/students/set_student', to: 'students#set_student', as: 'register'
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
end
