require "datadog_api_client"

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_monthly_custom_reports] = true
end

api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
opts = {
  page_size: 789, # Integer | The number of files to return in the response `[default=60].`
  page_number: 789, # Integer | The identifier of the first page to return. This parameter is used for the pagination feature `[default=0]`.
  sort_dir: DatadogAPIClient::V1::UsageSortDirection::DESC, # UsageSortDirection | The direction to sort by: `[desc, asc]`.
  sort: DatadogAPIClient::V1::UsageSort::COMPUTED_ON, # UsageSort | The field to sort by: `[computed_on, size, start_date, end_date]`.
}

begin
  # Get the list of available monthly custom reports
  result = api_instance.get_monthly_custom_reports(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling UsageMeteringAPI->get_monthly_custom_reports: #{e}"
end
