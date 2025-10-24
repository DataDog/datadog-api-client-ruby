# Create event email address returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_event_email_address".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EventsAPI.new

body = DatadogAPIClient::V2::CreateEventEmailAddressRequest.new({
  data: DatadogAPIClient::V2::CreateEventEmailAddressRequestData.new({
    attributes: DatadogAPIClient::V2::CreateEventEmailAddressRequestDataAttributes.new({
      format: "",
      notify_handles: [
        "",
      ],
      tags: [
        "",
      ],
    }),
    type: DatadogAPIClient::V2::EventEmailsType::EVENT_EMAILS,
  }),
})
p api_instance.create_event_email_address(body)
