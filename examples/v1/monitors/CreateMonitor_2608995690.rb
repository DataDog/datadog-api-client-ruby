# Create a monitor with aggregate augmented query variables returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

body = DatadogAPIClient::V1::Monitor.new({
  name: "Example-Monitor",
  type: DatadogAPIClient::V1::MonitorType::QUERY_ALERT,
  query: 'formula("query1").rollup("sum").last("5m") > 124',
  message: "test message",
  options: DatadogAPIClient::V1::MonitorOptions.new({
    thresholds: DatadogAPIClient::V1::MonitorThresholds.new({
      critical: 124,
    }),
    variables: [
      DatadogAPIClient::V1::MonitorFormulaAndFunctionAggregateAugmentedQueryDefinition.new({
        data_source: DatadogAPIClient::V1::MonitorFormulaAndFunctionAggregateAugmentedDataSource::AGGREGATE_AUGMENTED_QUERY,
        name: "query1",
        group_by: [
          DatadogAPIClient::V1::MonitorFormulaAndFunctionEventQueryGroupBy.new({
            facet: "org_id",
          }),
          DatadogAPIClient::V1::MonitorFormulaAndFunctionEventQueryGroupBy.new({
            facet: "name",
          }),
        ],
        compute: [
          DatadogAPIClient::V1::MonitorFormulaAndFunctionEventQueryDefinitionCompute.new({
            name: "compute_result",
            aggregation: DatadogAPIClient::V1::MonitorFormulaAndFunctionEventAggregation::MAX,
          }),
        ],
        augment_query: DatadogAPIClient::V1::MonitorFormulaAndFunctionReferenceTableQueryDefinition.new({
          name: "filter_query",
          data_source: DatadogAPIClient::V1::MonitorFormulaAndFunctionReferenceTableDataSource::REFERENCE_TABLE,
          table_name: "test_table",
          columns: [
            DatadogAPIClient::V1::MonitorFormulaAndFunctionReferenceTableColumn.new({
              name: "org_id",
            }),
            DatadogAPIClient::V1::MonitorFormulaAndFunctionReferenceTableColumn.new({
              name: "name",
            }),
          ],
        }),
        base_query: DatadogAPIClient::V1::MonitorFormulaAndFunctionMetricsQueryDefinition.new({
          data_source: DatadogAPIClient::V1::MonitorFormulaAndFunctionMetricsDataSource::METRICS,
          name: "query1",
          query: "avg:dd{*} by {org_id}.as_count()",
        }),
        join_condition: DatadogAPIClient::V1::MonitorFormulaAndFunctionAggregateQueryJoinCondition.new({
          augment_attribute: "org_id",
          base_attribute: "org_id",
          join_type: DatadogAPIClient::V1::MonitorFormulaAndFunctionAggregateQueryJoinType::INNER,
        }),
      }),
    ],
  }),
})
p api_instance.create_monitor(body)
