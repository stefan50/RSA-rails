Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources 'rsas'
	post '/rsas/:id/encrypt_messages/', to: 'encrypt_messages#create'
	get '/rsas/:id_message/encrypt_messages/:id', to: 'encrypt_messages#show', as: 'create_encrypted'
end
