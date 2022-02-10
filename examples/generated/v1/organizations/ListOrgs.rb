require "datadog_api_client"
api_instance = DatadogAPIClient::V1::OrganizationsAPI.new

begin
  # List your managed organizations
  result = api_instance.list_orgs
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling OrganizationsAPI->list_orgs: #{e}"
end
