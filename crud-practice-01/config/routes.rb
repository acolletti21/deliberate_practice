Rails.application.routes.draw do
    get '/restaurants' => 'restaurants#index'

    get '/restaurants/new' => 'restaurants#new'
    post '/restaurants' => 'restaurants#create'
    get '/restaurants/:id' => 'restaurants#show'
    get '/restaurants/:id/edit' => 'restaurants#edit'
    patch '/restaurants/:id' => 'restaurants#update'
    delete '/restaurants/:id' => 'restaurants#destroy'
end