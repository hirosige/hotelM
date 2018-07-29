Rails.application.routes.draw do
  root to: 'home#show'

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  get 'dashboard/show'
  get "/auth/oauth2/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"

  post "/graphql", to: "graphql#execute"
end
