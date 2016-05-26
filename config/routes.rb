TaskTracker::Application.routes.draw do
  root 'static_pages#welcome'
  resources :tasks
  resources :teachers
  resources :students
  resources :classrooms, only: [:create, :destroy]
end
