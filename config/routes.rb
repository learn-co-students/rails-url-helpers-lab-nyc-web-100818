Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  # index -> get '/students'
  # show -> get '/students/:id'
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
end
