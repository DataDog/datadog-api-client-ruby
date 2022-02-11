require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
opts = {
  filter_shared: true, # Boolean | When `true`, this query only returns shared custom created or cloned dashboards.
  filter_deleted: true # Boolean | When `true`, this query returns only deleted custom-created or cloned dashboards. This parameter is incompatible with `filter[shared]`.
}

begin
  # Get all dashboards
  result = api_instance.list_dashboards(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling DashboardsAPI->list_dashboards: #{e}"
end
