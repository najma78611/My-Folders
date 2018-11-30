ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "fd8f0bc650c98a5d80a3462318372fd3"
  config.secret = "756a8009ad0a60747078440eb9e994e3"
  config.scope = "read_products" # Consult this page for more scope options:
                                 # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
