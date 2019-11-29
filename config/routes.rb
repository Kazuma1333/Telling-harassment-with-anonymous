Rails.application.routes.draw do
  root 'asks#new'

  post 'asks/check'

  post  'asks/thanks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
