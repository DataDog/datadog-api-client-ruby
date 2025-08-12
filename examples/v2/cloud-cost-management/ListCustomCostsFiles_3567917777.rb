# List Custom Costs files with pagination parameters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
opts = {
  page_number: 1,
  page_size: 10,
  sort: "-created_at",
}
p api_instance.list_custom_costs_files(opts)
