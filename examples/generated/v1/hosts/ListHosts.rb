require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::HostsAPI.new
opts = {
  filter: 'filter_example', # String | String to filter search results.
  sort_field: 'sort_field_example', # String | Sort hosts by this field.
  sort_dir: 'sort_dir_example', # String | Direction of sort. Options include `asc` and `desc`.
  start: 789, # Integer | Host result to start search from.
  count: 789, # Integer | Number of hosts to return. Max 1000.
  from: 789, # Integer | Number of seconds since UNIX epoch from which you want to search your hosts.
  include_muted_hosts_data: true, # Boolean | Include information on the muted status of hosts and when the mute expires.
  include_hosts_metadata: true # Boolean | Include additional metadata about the hosts (agent_version, machine, platform, processor, etc.).
}

begin
  # Get all hosts for your organization
  result = api_instance.list_hosts(opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling HostsAPI->list_hosts: #{e}"
end
