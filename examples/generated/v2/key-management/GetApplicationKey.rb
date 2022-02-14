require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
app_key_id = "app_key_id_example" # String | The ID of the application key.
opts = {
  include: "owned_by", # String | Resource path for related resources to include in the response. Only `owned_by` is supported.
}

begin
  # Get an application key
  result = api_instance.get_application_key(app_key_id, opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling KeyManagementAPI->get_application_key: #{e}"
end
