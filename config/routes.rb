Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'website#landing'
 get "profil", to: "website#profil", as: "profil"
 get "contact", to: "messages#new", as: "new_message"
 post "contact", to: "messages#create", as: "create_message"

end
