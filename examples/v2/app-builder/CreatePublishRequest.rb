# Create Publish Request returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new

body = DatadogAPIClient::V2::CreatePublishRequestRequest.new({
  data: DatadogAPIClient::V2::CreatePublishRequestRequestData.new({
    attributes: DatadogAPIClient::V2::CreatePublishRequestRequestDataAttributes.new({
      description: "Adds new dashboard widgets and a few bug fixes.",
      title: "Release v1.2 to production",
    }),
    type: DatadogAPIClient::V2::PublishRequestType::PUBLISHREQUEST,
  }),
})
p api_instance.create_publish_request("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
