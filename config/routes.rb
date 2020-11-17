Rails.application.routes.draw do
  # create 1/form get 2/ post form
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # show all
  get 'tasks', to: 'tasks#index'
  # show one
  get 'tasks/:id', to: 'tasks#show', as: :task
  # updating 1/get edit 2/patch the form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'
  # delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
