Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
      :auth0,
      Rails.application.secrets.oauth_client_id,
      Rails.application.secrets.oauth_client_secret,
      Rails.application.secrets.oauth_domain,
      callback_path: "/auth/oauth2/callback",
      authorize_params: {
          scope: 'openid profile',
          audience: 'https://suneikii.auth0.com/userinfo'
      }
  )
end
