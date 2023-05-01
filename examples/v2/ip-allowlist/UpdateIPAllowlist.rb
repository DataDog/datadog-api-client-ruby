# Update IP Allowlist returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::IPAllowlistAPI.new

body = DatadogAPIClient::V2::IPAllowlistUpdateRequest.new({
  data: DatadogAPIClient::V2::IPAllowlistData.new({
    attributes: DatadogAPIClient::V2::IPAllowlistAttributes.new({
      entries: [
        DatadogAPIClient::V2::IPAllowlistEntry.new({
          data: DatadogAPIClient::V2::IPAllowlistEntryData.new({
            attributes: DatadogAPIClient::V2::IPAllowlistEntryAttributes.new({
              note: "Example-IP-Allowlist",
              cidr_block: "127.0.0.1",
            }),
            type: DatadogAPIClient::V2::IPAllowlistEntryType::IP_ALLOWLIST_ENTRY,
          }),
        }),
      ],
      enabled: false,
    }),
    type: DatadogAPIClient::V2::IPAllowlistType::IP_ALLOWLIST,
  }),
})
p api_instance.update_ip_allowlist(body)
