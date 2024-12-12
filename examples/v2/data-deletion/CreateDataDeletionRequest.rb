# Creates a data deletion request returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_data_deletion_request".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DataDeletionAPI.new

body = DatadogAPIClient::V2::CreateDataDeletionRequestBody.new({
  data: DatadogAPIClient::V2::CreateDataDeletionRequestBodyData.new({
    attributes: DatadogAPIClient::V2::CreateDataDeletionRequestBodyAttributes.new({
      from: 1672527600000,
      indexes: [
        "test-index",
        "test-index-2",
      ],
      query: {
        host: "abc", service: "xyz",
      },
      to: 1704063600000,
    }),
  }),
})
p api_instance.create_data_deletion_request("logs", body)
