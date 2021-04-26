Rails.application.routes.draw do
  root to: 'home#index'
  get '/.well-known/acme-challenge/ueQEKzpHfECpveKU6GGWEYsAz6cULbNrt6YCTYdNGWQ', :to => redirect('/ueQEKzpHfECpveKU6GGWEYsAz6cULbNrt6YCTYdNGWQ')
end
