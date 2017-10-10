Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'stuff#index'
  get '/new', to: 'stuff#new'
  # get '/create', to: 'stuff#index'
  post '/create', to: 'stuff#create'
end
