# Create a monitor with aggregate filtered query variables returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

body = DatadogAPIClient::V1::Monitor.new({
  name: "Example-Monitor",
  type: DatadogAPIClient::V1::MonitorType::QUERY_ALERT,
  query: 'formula("query1").rollup("sum").last("5m") > 100',
  message: "test message",
  options: DatadogAPIClient::V1::MonitorOptions.new({
    thresholds: DatadogAPIClient::V1::MonitorThresholds.new({
      critical: 100,
    }),
    variables: [
      DatadogAPIClient::V1::MonitorFormulaAndFunctionAggregateFilteredQueryDefinition.new({
        data_source: DatadogAPIClient::V1::MonitorFormulaAndFunctionAggregateFilteredDataSource::AGGREGATE_FILTERED_QUERY,
        name: "query1",
        base_query: DatadogAPIClient::V1::MonitorFormulaAndFunctionMetricsQueryDefinition.new({
          data_source: DatadogAPIClient::V1::MonitorFormulaAndFunctionMetricsDataSource::METRICS,
          name: "query1",
          query: "max:container.cpu.usage{*} by {kube_cluster_name}.rollup(max)",
        }),
        filter_query: DatadogAPIClient::V1::MonitorFormulaAndFunctionReferenceTableQueryDefinition.new({
          name: "filter_query",
          data_source: DatadogAPIClient::V1::MonitorFormulaAndFunctionReferenceTableDataSource::REFERENCE_TABLE,
          table_name: "test_table",
          columns: [
            DatadogAPIClient::V1::MonitorFormulaAndFunctionReferenceTableColumn.new({
              name: "cluster_name",
            }),
          ],
        }),
        filters: [
          DatadogAPIClient::V1::MonitorFormulaAndFunctionAggregateQueryFilter.new({
            base_attribute: "kube_cluster_name",
            filter_attribute: "cluster_name",
          }),
        ],
      }),
    ],
  }),
})
p api_instance.create_monitor(body)
