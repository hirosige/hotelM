Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
      :auth0,
      '1mmqDOawn0ImTJi2G17w7Ovlr9UZybHB',
      'rvaVNBA5pKhTnL_Dlj0jwZmffnp2dQ8EyEzDq1q-dDPbPeML3DExYmYRUisfMufw',
      'suneikii.auth0.com',
      callback_path: "/auth/oauth2/callback",
      authorize_params: {
          scope: 'openid profile',
          audience: 'https://suneikii.auth0.com/userinfo'
      }
  )
end