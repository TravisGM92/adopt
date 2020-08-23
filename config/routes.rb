Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #welcome page
  get '/', to: 'welcome#index'

  #shelters
  get '/shelters', to: 'shelters#index'
  get '/shelters/new', to: 'shelters#new'
  post '/shelters', to: 'shelters#create'
  get '/shelters/:shelter_id', to: 'shelters#show'
  get '/shelters/:shelter_id/edit', to: 'shelters#edit'
  patch '/shelters/:shelter_id', to: 'shelters#update'
  delete '/shelters/:shelter_id', to: 'shelters#destroy'

  #pets
  get '/pets', to: 'pets#index'
  get '/shelters/:shelter_id/pets/new', to: 'pets#new'
  post '/pets', to: 'pets#create'
  get '/shelters/:shelter_id/pets', to: 'pets#show'
end
