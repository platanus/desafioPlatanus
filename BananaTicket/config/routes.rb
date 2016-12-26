Rails.application.routes.draw do
  get '/validation/:code', to: 'validation#index', :defaults => { :format => :json }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
