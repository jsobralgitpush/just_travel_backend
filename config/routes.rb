Rails.application.routes.draw do
  devise_for :users
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: 'graphql#execute' if Rails.env.development?

  post '/graphql', to: 'graphql#execute'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
