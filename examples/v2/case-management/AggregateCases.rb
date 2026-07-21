# Aggregate cases returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::CaseAggregateRequest.new({
  data: DatadogAPIClient::V2::CaseAggregateRequestData.new({
    attributes: DatadogAPIClient::V2::CaseAggregateRequestAttributes.new({
      group_by: DatadogAPIClient::V2::CaseAggregateGroupBy.new({
        groups: [
          "status",
        ],
        limit: 14,
      }),
      query_filter: "service:case-api",
    }),
    type: DatadogAPIClient::V2::CaseAggregateResourceType::AGGREGATE,
  }),
})
p api_instance.aggregate_cases(body)
