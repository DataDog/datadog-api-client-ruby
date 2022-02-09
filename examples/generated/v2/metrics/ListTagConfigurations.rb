require "datadog_api_client"

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:list_tag_configurations] = true
end

api_instance = DatadogAPIClient::V2::MetricsAPI.new
opts = {
  filter_configured: true, # Boolean | Filter metrics that have configured tags.
  filter_tags_configured: "app", # String | Filter tag configurations by configured tags.
  filter_metric_type: DatadogAPIClient::V2::MetricTagConfigurationMetricTypes::GAUGE, # MetricTagConfigurationMetricTypes | Filter tag configurations by metric type.
  filter_include_percentiles: true, # Boolean | Filter distributions with additional percentile aggregations enabled or disabled.
  filter_tags: "env IN (staging,test) AND service:web", # String | Filter metrics that have been submitted with the given tags. Supports boolean and wildcard expressions. Cannot be combined with other filters.
  window_seconds: 3600, # Integer | The number of seconds of look back (from now) to apply to a filter[tag] query. Defaults value is 3600 (1 hour), maximum value is 172,800 (2 days).
}

begin
  # List tag configurations
  result = api_instance.list_tag_configurations(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling MetricsAPI->list_tag_configurations: #{e}"
end
