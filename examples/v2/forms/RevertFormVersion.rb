# Revert a form to a prior version returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.revert_form_version".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FormsAPI.new
p api_instance.revert_form_version("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", 9223372036854775807)
