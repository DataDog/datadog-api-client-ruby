# Patch a test suite returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new

body = DatadogAPIClient::V2::SuiteJsonPatchRequest.new({
  data: DatadogAPIClient::V2::SuiteJsonPatchRequestData.new({
    attributes: DatadogAPIClient::V2::SuiteJsonPatchRequestDataAttributes.new({
      json_patch: [
        DatadogAPIClient::V2::JsonPatchOperation.new({
          op: DatadogAPIClient::V2::JsonPatchOperationOp::ADD,
          path: "/name",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::SuiteJsonPatchType::SUITES_JSON_PATCH,
  }),
})
p api_instance.patch_test_suite("123-abc-456", body)
