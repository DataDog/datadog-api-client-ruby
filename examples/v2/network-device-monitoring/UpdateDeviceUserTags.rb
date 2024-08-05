# Update the tags for a device returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::NetworkDeviceMonitoringAPI.new

body = DatadogAPIClient::V2::ListTagsResponse.new({
  data: DatadogAPIClient::V2::ListTagsResponseData.new({
    attributes: DatadogAPIClient::V2::ListTagsResponseDataAttributes.new({
      tags: [
        "tag:test",
        "tag:testbis",
      ],
    }),
    id: "default_device",
    type: "tags",
  }),
})
p api_instance.update_device_user_tags("default_device", body)
