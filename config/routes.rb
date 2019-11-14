Rails.application.routes.draw do
  namespace :static_pages do
    get 'home'
    get 'help', to: redirect('static_pages/contact')
    get 'about'
    get 'contact'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
