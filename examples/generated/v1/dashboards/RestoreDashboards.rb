require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
body = DatadogAPIClient::V1::DashboardRestoreRequest.new({ data: [DatadogAPIClient::V1::DashboardBulkActionData.new({ id: "123-abc-456", type: DatadogAPIClient::V1::DashboardResourceType::DASHBOARD })] }) # DashboardRestoreRequest | Restore dashboards request body.

begin
  # Restore deleted dashboards
  api_instance.restore_dashboards(body)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->restore_dashboards: #{e}"
end
