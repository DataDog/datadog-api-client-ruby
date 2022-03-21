# Mute a host returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::HostsAPI.new

body = DatadogAPIClient::V1::HostMuteSettings.new({
  _end: 1579098130,
  message: "Muting this host for a test!",
  override: false,
})
p api_instance.mute_host("host_name", body)
