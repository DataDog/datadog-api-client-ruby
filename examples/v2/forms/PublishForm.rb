# Publish a form returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.publish_form".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FormsAPI.new

body = DatadogAPIClient::V2::FormPublicationRequest.new({
  data: DatadogAPIClient::V2::FormPublicationDataRequest.new({
    attributes: DatadogAPIClient::V2::FormPublicationAttributes.new({
      version: 1,
    }),
    type: DatadogAPIClient::V2::FormPublicationType::FORM_PUBLICATIONS,
  }),
})
p api_instance.publish_form("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
