RSpec.configure do |config|
  config.before(:example) do
    # run before each test
    @configuration = DatadogAPIClient::V1::Configuration.new
    @configuration.api_key["apiKeyAuth"] = ENV["DD_TEST_CLIENT_API_KEY"]
    @configuration.api_key["appKeyAuth"] = ENV["DD_TEST_CLIENT_APP_KEY"]
    @configuration.debugging = (!ENV["DEBUG"].nil? and ENV["DEBUG"] != false)
    @api_client = DatadogAPIClient::V1::ApiClient.new @configuration
  end
end
