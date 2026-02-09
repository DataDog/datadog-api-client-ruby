# Update workflow favorite status returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_workflow_favorite".to_sym] = true
end
api_instance = DatadogAPIClient::V2::WorkflowAutomationAPI.new

body = DatadogAPIClient::V2::WorkflowFavoriteRequest.new({
  data: DatadogAPIClient::V2::WorkflowFavoriteRequestData.new({
    attributes: DatadogAPIClient::V2::WorkflowFavoriteRequestAttributes.new({
      favorite: true,
    }),
    type: DatadogAPIClient::V2::WorkflowFavoriteRequestType::WORKFLOW_FAVORITE_REQUEST,
  }),
})
api_instance.update_workflow_favorite("workflow_id", body)
