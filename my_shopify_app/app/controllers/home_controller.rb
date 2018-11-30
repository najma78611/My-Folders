class HomeController < ShopifyApp::AuthenticatedController
 #  require 'rubygems'
	# require 'base64'
	# require 'openssl'
	# require 'sinatra'

	# The Shopify app's shared secret, viewable from the Partner dashboard
	# SHARED_SECRET = 'e0a8fbd9e02d89e578aa8199d711c7afa31f37f1d23dd4af9f4ca2833f60cee5'

  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    # @webhooks = ShopifyAPI::Webhook.find(:all)
    @webhooks = ShopifyAPI::Webhook.find(:all, :params => {:limit => 10})
  end

	# helpers do
	#   # Compare the computed HMAC digest based on the shared secret and the request contents
	#   # to the reported HMAC in the headers
	#   def verify_webhook(data, hmac_header)
	#     calculated_hmac = Base64.strict_encode64(OpenSSL::HMAC.digest('sha256', SHARED_SECRET, data))
	#     ActiveSupport::SecurityUtils.secure_compare(calculated_hmac, hmac_header)
	#   end
	# end

	# # Respond to HTTP POST requests sent to this web service
	# post '/' do
	#   request.body.rewind
	#   data = request.body.read
	#   verified = verify_webhook(data, env["HTTP_X_SHOPIFY_HMAC_SHA256"])

	#   # Output 'true' or 'false'
	#   puts "Webhook verified: #{verified}"
	# end
end
