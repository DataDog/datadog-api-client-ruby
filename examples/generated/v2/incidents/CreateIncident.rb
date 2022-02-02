require "datadog_api_client"

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:create_incident] = true
end

api_instance = DatadogAPIClient::V2::IncidentsAPI.new
body = DatadogAPIClient::V2::IncidentCreateRequest.new({ data: DatadogAPIClient::V2::IncidentCreateData.new({ attributes: DatadogAPIClient::V2::IncidentCreateAttributes.new({ customer_impacted: false, title: "A test incident title" }), type: DatadogAPIClient::V2::IncidentType::INCIDENTS }) }) # IncidentCreateRequest | Incident payload.

begin
  # Create an incident
  result = api_instance.create_incident(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling IncidentsAPI->create_incident: #{e}"
end
