Rails.application.routes.draw do
  defaults format: :json do
    post   '/signup',   to: 'users#sign_up'
    get    '/me',       to: 'users#me'
    post   '/login',   to: 'login#login'
  end
end
