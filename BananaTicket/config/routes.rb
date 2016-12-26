Rails.application.routes.draw do
  get 'print', to: 'print#index', as: :print
  get 'print/:event_id', to: 'print#details', as: :print_details

  get '/validation/:code', to: 'validation#index', :defaults => { :format => :json }, as: :validation

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
