Rails.application.routes.draw do
  get 'dashboard/show'
  get "/auth/oauth2/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"
end
