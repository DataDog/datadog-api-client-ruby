# Create an On-Call notification channel for a user returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::CreateUserNotificationChannelRequest.new({
  data: DatadogAPIClient::V2::CreateNotificationChannelData.new({
    attributes: DatadogAPIClient::V2::CreateNotificationChannelAttributes.new({
      config: DatadogAPIClient::V2::CreateEmailNotificationChannelConfig.new({
        address: "foo@bar.com",
        formats: [
          DatadogAPIClient::V2::NotificationChannelEmailFormatType::HTML,
        ],
        type: DatadogAPIClient::V2::NotificationChannelEmailConfigType::EMAIL,
      }),
    }),
    type: DatadogAPIClient::V2::NotificationChannelType::NOTIFICATION_CHANNELS,
  }),
})
p api_instance.create_user_notification_channel(USER_DATA_ID, body)
