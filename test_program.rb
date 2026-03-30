require "datadog_api_client"

# Use the EXISTING access_token field (pre-existing OAuth2/bearer support)
# to test if PAT auth works without any new PAT-specific code.
pat = "ddpat_REPLACE_WITH_YOUR_PAT"

DatadogAPIClient.configure do |config|
  config.access_token = pat
  config.debugging = true

  # Point to staging. Use server index 1 ({protocol}://{name})
  # since datad0g.com is not in the allowed enum for the {site} variable.
  config.server_index = 1
  config.server_variables[:name] = "dd.datad0g.com"
end

api_instance = DatadogAPIClient::V2::UsersAPI.new
opts = { page_size: 2 }

begin
  resp = api_instance.list_users(opts)
  puts "\n--- Response from UsersAPI.list_users ---"
  puts resp.to_s[0..2000]
rescue DatadogAPIClient::APIError => e
  puts "Error when calling UsersAPI#list_users: #{e}"
  puts "Response body: #{e.response_body}"
  exit 1
end
