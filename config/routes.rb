TaskTracker::Application.routes.draw do
  root 'static_pages#welcome'
  resources :tasks
end
