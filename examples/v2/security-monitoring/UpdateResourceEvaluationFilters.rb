# Update resource filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::UpdateResourceEvaluationFiltersRequest.new({
  data: DatadogAPIClient::V2::UpdateResourceEvaluationFiltersRequestData.new({
    attributes: DatadogAPIClient::V2::ResourceFilterAttributes.new({
      cloud_provider: {
        aws: {
          aws_account_id: [
            "tag1:v1",
          ],
        },
      },
    }),
    id: "csm_resource_filter",
    type: DatadogAPIClient::V2::ResourceFilterRequestType::CSM_RESOURCE_FILTER,
  }),
})
p api_instance.update_resource_evaluation_filters(body)
