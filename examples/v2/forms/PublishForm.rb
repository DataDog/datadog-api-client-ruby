# Publish a form version returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.publish_form".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FormsAPI.new

# there is a valid "form" in the system
FORM_DATA_ID = ENV["FORM_DATA_ID"]

body = DatadogAPIClient::V2::PublishFormRequest.new({
  data: DatadogAPIClient::V2::PublishFormData.new({
    attributes: DatadogAPIClient::V2::PublishFormDataAttributes.new({
      version: 1,
    }),
    type: DatadogAPIClient::V2::FormPublicationType::FORM_PUBLICATIONS,
  }),
})
p api_instance.publish_form(FORM_DATA_ID, body)
