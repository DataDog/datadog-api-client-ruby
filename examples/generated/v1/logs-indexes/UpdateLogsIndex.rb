require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new
name = "name_example" # String | Name of the log index.
body = DatadogAPIClient::V1::LogsIndexUpdateRequest.new({ filter: DatadogAPIClient::V1::LogsFilter.new }) # LogsIndexUpdateRequest | Object containing the new `LogsIndexUpdateRequest`.

begin
  # Update an index
  result = api_instance.update_logs_index(name, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling LogsIndexesAPI->update_logs_index: #{e}"
end
