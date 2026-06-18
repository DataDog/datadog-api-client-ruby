# Update a RUM SDK configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_rum_sdk_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMRemoteConfigAPI.new

body = DatadogAPIClient::V2::RumSdkConfigUpdateRequest.new({
  data: DatadogAPIClient::V2::RumSdkConfigUpdateData.new({
    attributes: DatadogAPIClient::V2::RumSdkConfigUpdateAttributes.new({
      rum: DatadogAPIClient::V2::RumSdkConfigRumUpdateAttributes.new({
        allowed_tracing_urls: [
          DatadogAPIClient::V2::RumSdkConfigTracingUrlConfig.new({
            match: DatadogAPIClient::V2::RumSdkConfigMatchOption.new({
              rc_serialized_type: DatadogAPIClient::V2::RumSdkConfigMatchOptionSerializedType::STRING,
              value: "https://app.datadoghq.com",
            }),
            propagator_types: [
              DatadogAPIClient::V2::RumSdkConfigTracingUrlPropagatorType::DATADOG,
              DatadogAPIClient::V2::RumSdkConfigTracingUrlPropagatorType::TRACECONTEXT,
            ],
          }),
        ],
        allowed_tracking_origins: [
          DatadogAPIClient::V2::RumSdkConfigMatchOption.new({
            rc_serialized_type: DatadogAPIClient::V2::RumSdkConfigMatchOptionSerializedType::STRING,
            value: "https://app.datadoghq.com",
          }),
        ],
        context: [
          DatadogAPIClient::V2::RumSdkConfigDynamicOptionPair.new({
            key: "id",
            value: DatadogAPIClient::V2::RumSdkConfigDynamicOption.new({
              attribute: "data-version",
              extractor: DatadogAPIClient::V2::RumSdkConfigSerializedRegex.new({
                rc_serialized_type: DatadogAPIClient::V2::RumSdkConfigSerializedRegexType::REGEX,
                value: "^https://app-.*.datadoghq.com",
              }),
              key: "app.version",
              name: "app_version",
              path: "application.version",
              rc_serialized_type: DatadogAPIClient::V2::RumSdkConfigDynamicOptionSerializedType::DYNAMIC,
              selector: "#app-version",
              strategy: DatadogAPIClient::V2::RumSdkConfigDynamicOptionStrategy::JS,
            }),
          }),
        ],
        default_privacy_level: "mask",
        enable_privacy_for_action_name: true,
        env: "production",
        service: "my-service",
        session_replay_sample_rate: 20,
        session_sample_rate: 75,
        trace_sample_rate: 100,
        track_session_across_subdomains: false,
        user: [
          DatadogAPIClient::V2::RumSdkConfigDynamicOptionPair.new({
            key: "id",
            value: DatadogAPIClient::V2::RumSdkConfigDynamicOption.new({
              attribute: "data-version",
              extractor: DatadogAPIClient::V2::RumSdkConfigSerializedRegex.new({
                rc_serialized_type: DatadogAPIClient::V2::RumSdkConfigSerializedRegexType::REGEX,
                value: "^https://app-.*.datadoghq.com",
              }),
              key: "app.version",
              name: "app_version",
              path: "application.version",
              rc_serialized_type: DatadogAPIClient::V2::RumSdkConfigDynamicOptionSerializedType::DYNAMIC,
              selector: "#app-version",
              strategy: DatadogAPIClient::V2::RumSdkConfigDynamicOptionStrategy::JS,
            }),
          }),
        ],
        version: DatadogAPIClient::V2::RumSdkConfigDynamicOption.new({
          attribute: "data-version",
          extractor: DatadogAPIClient::V2::RumSdkConfigSerializedRegex.new({
            rc_serialized_type: DatadogAPIClient::V2::RumSdkConfigSerializedRegexType::REGEX,
            value: "^https://app-.*.datadoghq.com",
          }),
          key: "app.version",
          name: "app_version",
          path: "application.version",
          rc_serialized_type: DatadogAPIClient::V2::RumSdkConfigDynamicOptionSerializedType::DYNAMIC,
          selector: "#app-version",
          strategy: DatadogAPIClient::V2::RumSdkConfigDynamicOptionStrategy::JS,
        }),
      }),
    }),
    id: "abc12345-1234-5678-abcd-ef1234567890",
    type: DatadogAPIClient::V2::RumSdkConfigType::RUM_SDK_CONFIG,
  }),
})
p api_instance.update_rum_sdk_config("config_id", body)
