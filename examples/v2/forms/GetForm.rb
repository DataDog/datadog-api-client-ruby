# Get a form returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_form".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FormsAPI.new

# there is a valid "form" in the system
FORM_DATA_ID = ENV["FORM_DATA_ID"]
p api_instance.get_form(FORM_DATA_ID)
