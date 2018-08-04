Knock.setup do |config|

  config.token_audience = -> { Rails.application.secrets.api_client_id }
  config.token_secret_signature_key = -> { Rails.application.secrets.api_client_secret }
end
