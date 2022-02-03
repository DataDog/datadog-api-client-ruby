require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new
name = 'name_example' # String | Name of the log index.

begin
  # Get an index
  result = api_instance.get_logs_index(name)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->get_logs_index: #{e}"
end
