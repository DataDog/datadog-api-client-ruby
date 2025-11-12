# Create an On-Call email for a user returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::EmailCreateRequest.new({
  data: DatadogAPIClient::V2::EmailData.new({
    attributes: DatadogAPIClient::V2::EmailAttributes.new({
      active: true,
      address: "john.doe@datadoghq.com",
      _alias: "",
      formats: [
        DatadogAPIClient::V2::EmailFormatType::HTML,
      ],
    }),
    type: DatadogAPIClient::V2::EmailType::EMAILS,
  }),
})
p api_instance.create_user_email_notification_channel(USER_DATA_ID, body)
