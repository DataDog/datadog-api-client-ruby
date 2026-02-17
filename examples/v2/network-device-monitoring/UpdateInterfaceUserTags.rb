# Update the tags for an interface returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::NetworkDeviceMonitoringAPI.new

body = DatadogAPIClient::V2::ListInterfaceTagsResponse.new({
  data: DatadogAPIClient::V2::ListInterfaceTagsResponseData.new({
    attributes: DatadogAPIClient::V2::ListTagsResponseDataAttributes.new({
      tags: [
        "tag:test",
        "tag:testbis",
      ],
    }),
    id: "example:1.2.3.4:1",
    type: "tags",
  }),
})
p api_instance.update_interface_user_tags("example:1.2.3.4:1", body)
