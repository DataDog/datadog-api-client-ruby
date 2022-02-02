require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::MetricsAPI.new
body = DatadogAPIClient::V1::MetricsPayload.new({series: [DatadogAPIClient::V1::Series.new({metric: 'system.load.1', points: [[3.56]]})]}) # MetricsPayload | 
opts = {
  content_encoding: DatadogAPIClient::V1::MetricContentEncoding::DEFLATE # MetricContentEncoding | HTTP header used to compress the media-type.
}

begin
  # Submit metrics
  result = api_instance.submit_metrics(body, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling MetricsAPI->submit_metrics: #{e}"
end
