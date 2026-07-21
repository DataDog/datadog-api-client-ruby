# Bulk update cases returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::CaseBulkUpdateRequest.new({
  data: DatadogAPIClient::V2::CaseBulkUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::CaseBulkUpdateRequestAttributes.new({
      case_ids: [
        "case-id-1",
        "case-id-2",
      ],
      payload: {
        priority: "P1",
      },
      type: DatadogAPIClient::V2::CaseBulkActionType::PRIORITY,
    }),
    type: DatadogAPIClient::V2::CaseBulkResourceType::BULK,
  }),
})
p api_instance.bulk_update_cases(body)
