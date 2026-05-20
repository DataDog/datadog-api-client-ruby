# Update App Tags returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new

# there is a valid "app" in the system
APP_DATA_ID = ENV["APP_DATA_ID"]

body = DatadogAPIClient::V2::UpdateAppTagsRequest.new({
  data: DatadogAPIClient::V2::UpdateAppTagsRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateAppTagsRequestDataAttributes.new({
      tags: [
        "team:platform",
        "service:ops",
      ],
    }),
    type: DatadogAPIClient::V2::AppTagsType::TAGS,
  }),
})
api_instance.update_app_tags(APP_DATA_ID, body)
