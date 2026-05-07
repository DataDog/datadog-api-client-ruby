# Ingest email transport webhook events returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_email_transport_webhook_intake".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EmailTransportAPI.new

body = [
  DatadogAPIClient::V2::TransportWebhookLog.new({
    attributes: DatadogAPIClient::V2::TransportWebhookLogAttributes.new({
      category: [
        "transactional",
      ],
      email: DatadogAPIClient::V2::TransportWebhookLogEmail.new({
        address: "user@example.com",
        domain: "example.com",
        subject: "[Monitor Alert] CPU usage is high",
        type: [
          "transactional",
        ],
      }),
      email_id: "abc123-def456",
      email_type_display_name: "Monitor Alert",
      message: DatadogAPIClient::V2::TransportWebhookLogMessage.new({
        auth: DatadogAPIClient::V2::TransportWebhookLogMessageAuth.new({
          delivered_with_tls: "TLSv1.2",
        }),
        custom_args: DatadogAPIClient::V2::TransportWebhookLogMessageCustomArgs.new({
          email_id: "abc123-def456",
          email_type_display_name: "Monitor Alert",
          org_uuid: "8dee7c38-00cb-11ea-a77b-8b5a08d3b091",
          queue_time: "2024-01-15T10:29:00Z",
          subject: "[Monitor Alert] CPU usage is high",
        }),
        id: DatadogAPIClient::V2::TransportWebhookLogMessageId.new({
          message_id: "<message-id@example.com>",
          smtp_id: "<abc123@mail.example.com>",
          transport_event_id: "evt_abc123",
        }),
        name: "delivered",
        response: DatadogAPIClient::V2::TransportWebhookLogMessageResponse.new({
          enhanced_smtp_code: "2.0.0",
          reason: "250 2.0.0 OK",
          smtp_code: "250",
        }),
        sender_ip: "192.168.1.1",
        timestamp: DatadogAPIClient::V2::TransportWebhookLogMessageTimestamp.new({
          event_timestamp: 1705312200.0,
          lifetime: 3.2,
          queue_time: 1.5,
          scheduled_time: 1705312190.0,
        }),
      }),
      network: DatadogAPIClient::V2::TransportWebhookLogNetwork.new({
        ip: DatadogAPIClient::V2::TransportWebhookLogNetworkIp.new({
          attributes: [
            DatadogAPIClient::V2::TransportWebhookLogIpAttribute.new({
              ip: "192.168.1.1",
              source: [
                "sendgrid",
              ],
            }),
          ],
          list: [
            "192.168.1.1",
          ],
        }),
      }),
      org: 1234,
      org_metadata: DatadogAPIClient::V2::TransportWebhookLogOrgMetadata.new({}),
      org_uuid: "8dee7c38-00cb-11ea-a77b-8b5a08d3b091",
      queue_time: "2024-01-15T10:29:00Z",
      subject: "[Monitor Alert] CPU usage is high",
      useragent: "Mozilla/5.0",
    }),
    date: "2024-01-15T10:30:00Z",
    log_id: "AQAAAZPHnBT0TwJAdgAAAABBWlBIblVlNEFBQ0dFMmVkYTFDSnRR",
    source: "sendgrid",
    status: "info",
    tags: [
      "env:production",
    ],
  }),
]
api_instance.create_email_transport_webhook_intake(body)
