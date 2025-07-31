# Update case attributes returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

# there is a valid "case" in the system
CASE_ID = ENV["CASE_ID"]

body = DatadogAPIClient::V2::CaseUpdateAttributesRequest.new({
  data: DatadogAPIClient::V2::CaseUpdateAttributes.new({
    attributes: DatadogAPIClient::V2::CaseUpdateAttributesAttributes.new({
      attributes: {
        env: [
          "test",
        ], service: [
          "web-store",
          "web-api",
        ], team: [
          "engineer",
        ],
      },
    }),
    type: DatadogAPIClient::V2::CaseResourceType::CASE,
  }),
})
p api_instance.update_attributes(CASE_ID, body)
