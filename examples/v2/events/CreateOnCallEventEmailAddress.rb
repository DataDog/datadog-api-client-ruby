# Create on-call event email address returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_on_call_event_email_address".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EventsAPI.new

body = DatadogAPIClient::V2::CreateOnCallEventEmailAddressRequest.new({
  data: DatadogAPIClient::V2::CreateOnCallEventEmailAddressRequestData.new({
    attributes: DatadogAPIClient::V2::CreateOnCallEventEmailAddressRequestDataAttributes.new({
      format: "",
      tags: [
        "",
      ],
    }),
    type: DatadogAPIClient::V2::EventEmailsType::EVENT_EMAILS,
  }),
})
p api_instance.create_on_call_event_email_address(body)
