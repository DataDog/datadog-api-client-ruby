require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::HostsAPI.new
host_name = 'host_name_example' # String | Name of the host to mute.
body = DatadogAPIClient::V1::HostMuteSettings.new # HostMuteSettings | Mute a host request body.

begin
  # Mute a host
  result = api_instance.mute_host(host_name, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling HostsAPI->mute_host: #{e}"
end
