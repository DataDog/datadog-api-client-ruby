# Update a Snowflake integration account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_snowflake_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SnowflakeIntegrationAPI.new

body = DatadogAPIClient::V2::SnowflakeIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::SnowflakeIntegrationAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::SnowflakeIntegrationAccountUpdateAttributes.new({
      authentication: DatadogAPIClient::V2::SnowflakeIntegrationAccountAuthenticationRequest.new({
        auth_type: DatadogAPIClient::V2::SnowflakeIntegrationAccountPrivateKeyAuthType::SNOWFLAKE_PRIVATE_KEY,
        private_key: '-----BEGIN PRIVATE KEY-----\nMIIE...\n-----END PRIVATE KEY-----',
        private_key_name: "my-rsa-key",
        private_key_passphrase: "your-private-key-passphrase",
      }),
      dataflows: DatadogAPIClient::V2::SnowflakeIntegrationDataflowsRequest.new({
        snowflake_account_usage_metrics: DatadogAPIClient::V2::SnowflakeAccountUsageMetricsIntegrationDataflowRequest.new({
          enabled: true,
          settings: DatadogAPIClient::V2::SnowflakeAccountUsageMetricsIntegrationDataflowSettingsRequest.new({
            account_usage_metrics_aggregate_last_24h: false,
          }),
        }),
        snowflake_cloud_cost_metrics: DatadogAPIClient::V2::SnowflakeCloudCostMetricsIntegrationDataflowRequest.new({
          enabled: true,
          settings: DatadogAPIClient::V2::SnowflakeCloudCostMetricsIntegrationDataflowSettingsRequest.new({
            query_tags: "env,team,cost_center",
          }),
        }),
        snowflake_data_observability_quality_monitoring: DatadogAPIClient::V2::SnowflakeDataObservabilityQualityMonitoringIntegrationDataflowRequest.new({
          enabled: true,
          settings: DatadogAPIClient::V2::SnowflakeDataObservabilityQualityMonitoringIntegrationDataflowSettingsRequest.new({
            do_table_crawler_cron: "0 */6 * * *",
            sync_snowflake_system_database: true,
          }),
        }),
        snowflake_event_table_logs: DatadogAPIClient::V2::SnowflakeEventTableLogsIntegrationDataflowRequest.new({
          enabled: true,
          settings: DatadogAPIClient::V2::SnowflakeEventTableLogsIntegrationDataflowSettingsRequest.new({
            event_table_events_enabled: true,
            event_table_logs_enabled: true,
            event_table_logs_interval_min: 15,
            event_table_span_events_enabled: false,
            event_table_spans_enabled: false,
          }),
        }),
        snowflake_organization_usage_metrics: DatadogAPIClient::V2::SnowflakeOrganizationUsageMetricsIntegrationDataflowRequest.new({
          enabled: true,
          settings: DatadogAPIClient::V2::SnowflakeOrganizationUsageMetricsIntegrationDataflowSettingsRequest.new({
            organization_usage_metrics_aggregate_last_24h: false,
          }),
        }),
        snowflake_query_history_logs: DatadogAPIClient::V2::SnowflakeQueryHistoryLogsIntegrationDataflowRequest.new({
          enabled: true,
          settings: DatadogAPIClient::V2::SnowflakeQueryHistoryLogsIntegrationDataflowSettingsRequest.new({
            join_query_history_with_access_history_enabled: true,
            query_history_logs_interval_min: 15,
          }),
        }),
        snowflake_security_logs: DatadogAPIClient::V2::SnowflakeSecurityLogsIntegrationDataflowRequest.new({
          enabled: true,
          settings: DatadogAPIClient::V2::SnowflakeSecurityLogsIntegrationDataflowSettingsRequest.new({
            security_logs_interval_min: 60,
          }),
        }),
        snowflake_task_history_logs: DatadogAPIClient::V2::SnowflakeTaskHistoryLogsIntegrationDataflowRequest.new({
          enabled: true,
          settings: DatadogAPIClient::V2::SnowflakeTaskHistoryLogsIntegrationDataflowSettingsRequest.new({
            task_history_logs_interval_min: 30,
          }),
        }),
      }),
      name: "prod-snowflake",
      settings: DatadogAPIClient::V2::SnowflakeIntegrationAccountSettingsUpdate.new({
        snowflake_account_identifier: "myorg-myaccount",
        username: "datadog_user",
      }),
    }),
    id: "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_snowflake_integration_account("account_id", body)
