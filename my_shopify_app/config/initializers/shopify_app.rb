ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "d6e3c3591402eb91581fd89c97d61070"
  config.secret = "ce434a76269680a90174117373b16c9b"
  config.scope = "read_products" # Consult this page for more scope options:
                                 # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.embedded_app = false
  # config.after_authenticate_job = false
  config.session_repository = Shop
  # config.redirect_uri = "http://localhost:3000"
  config.webhooks = [
    {topic: 'carts/create', address: 'https://click-your-cart.myshopify.com/cart/create', format: 'json'},
  #   {topic: 'carts/create', address: 'https://click-your-cart.myshopify.com/carts_create', format: 'json'},
  ]
  config.webhook_jobs_namespace = 'shopify/webhooks'
  # config.scripttags = [
  #   {event:'onload', src: 'https://my-shopifyapp.herokuapp.com/fancy.js'},
  #   {event:'onload', src: ->(domain) { dynamic_tag_url(domain) } }
  # ]
  config.after_authenticate_job = { job: Shopify::AfterAuthenticateJob, inline: false }
  # config.scope = "read_products, write_script_tags"
end
