# The generic format is like so:
# HTTPVERB ‘URL’ => 
# “CONTROLLER#VIEW”


Rails.application.routes.draw do 

	#this is a shortcut (aka RESTful route) to create a list of related routes. for example, resources :events creates the following routes: 
# 	 Prefix Verb   URI Pattern                Controller#Action
#     events GET    /events(.:format)          events#index
#            POST   /events(.:format)          events#create
#  new_event GET    /events/new(.:format)      events#new
# edit_event GET    /events/:id/edit(.:format) events#edit
#      event GET    /events/:id(.:format)      events#show
#            PATCH  /events/:id(.:format)      events#update
#            PUT    /events/:id(.:format)      events#update
#            DELETE /events/:id(.:format)      events#destroy
#            GET    /                          home#index
#      index GET    /index(.:format)           home#index
#       join GET    /join(.:format)            home#join
#    contact GET    /contact(.:format)         home#contact
#  contactus GET    /contact/:id(.:format)     home#contact
#    success GET    /success(.:format)         user#contact
#      error GET    /error(.:format)           user#contact

resources :users do 
	resources :posts
end

	get '/' => "home#index"
	get '/home' => "home#index"
	get '/index' => "home#index"
	get '/join' => "home#join"
 	get '/contact' => "home#contact"
 	get '/contact/:id' => "home#contact", as: :contactus
 	get '/success' => "user#contact", as: :success
 	get '/error' => "user#contact", as: :error
end






