# Update App Tags returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new

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
api_instance.update_app_tags("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
