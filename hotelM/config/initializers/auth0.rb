Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
      :auth0,
      '1mmqDOawn0ImTJi2G17w7Ovlr9UZybHB',
      'OG3_T_tM5hPD6jSsh1khX03SXKjXnhuWZehqpwQXo0HLJ8OU_0DJiopQhjmuDaD9',
      'suneikii.auth0.com',
      callback_path: "/auth/oauth2/callback",
      authorize_params: {
          scope: 'openid profile',
          audience: 'https://suneikii.auth0.com/userinfo'
      }
  )
end