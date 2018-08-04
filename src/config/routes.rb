# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                  profiles GET    /profiles(.:format)                                                                      profiles#index
#                           POST   /profiles(.:format)                                                                      profiles#create
#               new_profile GET    /profiles/new(.:format)                                                                  profiles#new
#              edit_profile GET    /profiles/:id/edit(.:format)                                                             profiles#edit
#                   profile GET    /profiles/:id(.:format)                                                                  profiles#show
#                           PATCH  /profiles/:id(.:format)                                                                  profiles#update
#                           PUT    /profiles/:id(.:format)                                                                  profiles#update
#                           DELETE /profiles/:id(.:format)                                                                  profiles#destroy
#                      root GET    /                                                                                        home#index
#      auth_oauth2_callback GET    /auth/oauth2/callback(.:format)                                                          home#callback
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  # API Endpoint
  post "/graphql", to: "graphql#execute"
  
  get 'dashboard/show'
  get 'auth0/callback'
  get 'auth0/failure'
  root 'home#index'

  get "/auth/oauth2/callback" => "auth0#callback"
  get "/oauth/token" => "home#token"
  get "/auth/failure" => "auth0#failure"

  resources :profiles
end
