# Bulk delete tests returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new

body = DatadogAPIClient::V2::DeletedTestsRequestDeleteRequest.new({
  data: DatadogAPIClient::V2::DeletedTestsRequestDelete.new({
    attributes: DatadogAPIClient::V2::DeletedTestsRequestDeleteAttributes.new({
      public_ids: [
        "",
      ],
    }),
    type: DatadogAPIClient::V2::DeletedTestsRequestType::DELETE_TESTS_REQUEST,
  }),
})
p api_instance.delete_synthetics_tests(body)
