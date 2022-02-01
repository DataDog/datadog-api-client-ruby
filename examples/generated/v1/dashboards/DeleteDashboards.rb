require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
body = DatadogAPIClient::V1::DashboardBulkDeleteRequest.new({data: [DatadogAPIClient::V1::DashboardBulkActionData.new({id: '123-abc-456', type: DatadogAPIClient::V1::DashboardResourceType::DASHBOARD})]}) # DashboardBulkDeleteRequest | Delete dashboards request body.

begin
  # Delete dashboards
  api_instance.delete_dashboards(body)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->delete_dashboards: #{e}"
end
