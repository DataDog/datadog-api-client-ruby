# Execute a tabular DDSQL query returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DDSQLAPI.new

body = DatadogAPIClient::V2::DdsqlTabularQueryRequest.new({
  data: DatadogAPIClient::V2::DdsqlTabularQueryRequestData.new({
    attributes: DatadogAPIClient::V2::DdsqlTabularQueryRequestAttributes.new({
      query: "SELECT cloud_provider, count(*) FROM dd.hosts group by cloud_provider",
      row_limit: 1000,
      time: DatadogAPIClient::V2::DdsqlTabularQueryTimeWindow.new({
        from_timestamp: 1736942400000,
        to_timestamp: 1736946000000,
      }),
    }),
    type: DatadogAPIClient::V2::DdsqlTabularQueryRequestType::DDSQL_QUERY_REQUEST,
  }),
})
p api_instance.execute_ddsql_tabular_query(body)
