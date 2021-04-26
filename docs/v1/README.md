# datadog_api_client/v1

DatadogAPIClient::V1 - the Ruby gem for the Datadog API V1 Collection

Collection of all Datadog Public endpoints.

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'datadog_api_client/v1'

api_instance = DatadogAPIClient::V1::AWSIntegrationAPI.new
body = DatadogAPIClient::V1::AWSAccount.new # AWSAccount | AWS Request Object

begin
  #Create an AWS integration
  result = api_instance.create_aws_account(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Exception when calling AWSIntegrationAPI->create_aws_account: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.datadoghq.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DatadogAPIClient::V1::AWSIntegrationAPI* | [**create_aws_account**](AWSIntegrationAPI.md#create_aws_account) | **POST** /api/v1/integration/aws | Create an AWS integration
*DatadogAPIClient::V1::AWSIntegrationAPI* | [**create_aws_tag_filter**](AWSIntegrationAPI.md#create_aws_tag_filter) | **POST** /api/v1/integration/aws/filtering | Set an AWS tag filter
*DatadogAPIClient::V1::AWSIntegrationAPI* | [**create_new_aws_external_id**](AWSIntegrationAPI.md#create_new_aws_external_id) | **PUT** /api/v1/integration/aws/generate_new_external_id | Generate a new external ID
*DatadogAPIClient::V1::AWSIntegrationAPI* | [**delete_aws_account**](AWSIntegrationAPI.md#delete_aws_account) | **DELETE** /api/v1/integration/aws | Delete an AWS integration
*DatadogAPIClient::V1::AWSIntegrationAPI* | [**delete_aws_tag_filter**](AWSIntegrationAPI.md#delete_aws_tag_filter) | **DELETE** /api/v1/integration/aws/filtering | Delete a tag filtering entry
*DatadogAPIClient::V1::AWSIntegrationAPI* | [**list_available_aws_namespaces**](AWSIntegrationAPI.md#list_available_aws_namespaces) | **GET** /api/v1/integration/aws/available_namespace_rules | List namespace rules
*DatadogAPIClient::V1::AWSIntegrationAPI* | [**list_aws_accounts**](AWSIntegrationAPI.md#list_aws_accounts) | **GET** /api/v1/integration/aws | List all AWS integrations
*DatadogAPIClient::V1::AWSIntegrationAPI* | [**list_aws_tag_filters**](AWSIntegrationAPI.md#list_aws_tag_filters) | **GET** /api/v1/integration/aws/filtering | Get all AWS tag filters
*DatadogAPIClient::V1::AWSIntegrationAPI* | [**update_aws_account**](AWSIntegrationAPI.md#update_aws_account) | **PUT** /api/v1/integration/aws | Update an AWS integration
*DatadogAPIClient::V1::AWSLogsIntegrationAPI* | [**check_aws_logs_lambda_async**](AWSLogsIntegrationAPI.md#check_aws_logs_lambda_async) | **POST** /api/v1/integration/aws/logs/check_async | Check that an AWS Lambda Function exists
*DatadogAPIClient::V1::AWSLogsIntegrationAPI* | [**check_aws_logs_services_async**](AWSLogsIntegrationAPI.md#check_aws_logs_services_async) | **POST** /api/v1/integration/aws/logs/services_async | Check permissions for log services
*DatadogAPIClient::V1::AWSLogsIntegrationAPI* | [**create_aws_lambda_arn**](AWSLogsIntegrationAPI.md#create_aws_lambda_arn) | **POST** /api/v1/integration/aws/logs | Add AWS Log Lambda ARN
*DatadogAPIClient::V1::AWSLogsIntegrationAPI* | [**delete_aws_lambda_arn**](AWSLogsIntegrationAPI.md#delete_aws_lambda_arn) | **DELETE** /api/v1/integration/aws/logs | Delete an AWS Logs integration
*DatadogAPIClient::V1::AWSLogsIntegrationAPI* | [**enable_aws_log_services**](AWSLogsIntegrationAPI.md#enable_aws_log_services) | **POST** /api/v1/integration/aws/logs/services | Enable an AWS Logs integration
*DatadogAPIClient::V1::AWSLogsIntegrationAPI* | [**list_aws_logs_integrations**](AWSLogsIntegrationAPI.md#list_aws_logs_integrations) | **GET** /api/v1/integration/aws/logs | List all AWS Logs integrations
*DatadogAPIClient::V1::AWSLogsIntegrationAPI* | [**list_aws_logs_services**](AWSLogsIntegrationAPI.md#list_aws_logs_services) | **GET** /api/v1/integration/aws/logs/services | Get list of AWS log ready services
*DatadogAPIClient::V1::AuthenticationAPI* | [**validate**](AuthenticationAPI.md#validate) | **GET** /api/v1/validate | Validate API key
*DatadogAPIClient::V1::AzureIntegrationAPI* | [**create_azure_integration**](AzureIntegrationAPI.md#create_azure_integration) | **POST** /api/v1/integration/azure | Create an Azure integration
*DatadogAPIClient::V1::AzureIntegrationAPI* | [**delete_azure_integration**](AzureIntegrationAPI.md#delete_azure_integration) | **DELETE** /api/v1/integration/azure | Delete an Azure integration
*DatadogAPIClient::V1::AzureIntegrationAPI* | [**list_azure_integration**](AzureIntegrationAPI.md#list_azure_integration) | **GET** /api/v1/integration/azure | List all Azure integrations
*DatadogAPIClient::V1::AzureIntegrationAPI* | [**update_azure_host_filters**](AzureIntegrationAPI.md#update_azure_host_filters) | **POST** /api/v1/integration/azure/host_filters | Update Azure integration host filters
*DatadogAPIClient::V1::AzureIntegrationAPI* | [**update_azure_integration**](AzureIntegrationAPI.md#update_azure_integration) | **PUT** /api/v1/integration/azure | Update an Azure integration
*DatadogAPIClient::V1::DashboardListsAPI* | [**create_dashboard_list**](DashboardListsAPI.md#create_dashboard_list) | **POST** /api/v1/dashboard/lists/manual | Create a dashboard list
*DatadogAPIClient::V1::DashboardListsAPI* | [**delete_dashboard_list**](DashboardListsAPI.md#delete_dashboard_list) | **DELETE** /api/v1/dashboard/lists/manual/{list_id} | Delete a dashboard list
*DatadogAPIClient::V1::DashboardListsAPI* | [**get_dashboard_list**](DashboardListsAPI.md#get_dashboard_list) | **GET** /api/v1/dashboard/lists/manual/{list_id} | Get a dashboard list
*DatadogAPIClient::V1::DashboardListsAPI* | [**list_dashboard_lists**](DashboardListsAPI.md#list_dashboard_lists) | **GET** /api/v1/dashboard/lists/manual | Get all dashboard lists
*DatadogAPIClient::V1::DashboardListsAPI* | [**update_dashboard_list**](DashboardListsAPI.md#update_dashboard_list) | **PUT** /api/v1/dashboard/lists/manual/{list_id} | Update a dashboard list
*DatadogAPIClient::V1::DashboardsAPI* | [**create_dashboard**](DashboardsAPI.md#create_dashboard) | **POST** /api/v1/dashboard | Create a new dashboard
*DatadogAPIClient::V1::DashboardsAPI* | [**delete_dashboard**](DashboardsAPI.md#delete_dashboard) | **DELETE** /api/v1/dashboard/{dashboard_id} | Delete a dashboard
*DatadogAPIClient::V1::DashboardsAPI* | [**get_dashboard**](DashboardsAPI.md#get_dashboard) | **GET** /api/v1/dashboard/{dashboard_id} | Get a dashboard
*DatadogAPIClient::V1::DashboardsAPI* | [**list_dashboards**](DashboardsAPI.md#list_dashboards) | **GET** /api/v1/dashboard | Get all dashboards
*DatadogAPIClient::V1::DashboardsAPI* | [**update_dashboard**](DashboardsAPI.md#update_dashboard) | **PUT** /api/v1/dashboard/{dashboard_id} | Update a dashboard
*DatadogAPIClient::V1::DowntimesAPI* | [**cancel_downtime**](DowntimesAPI.md#cancel_downtime) | **DELETE** /api/v1/downtime/{downtime_id} | Cancel a downtime
*DatadogAPIClient::V1::DowntimesAPI* | [**cancel_downtimes_by_scope**](DowntimesAPI.md#cancel_downtimes_by_scope) | **POST** /api/v1/downtime/cancel/by_scope | Cancel downtimes by scope
*DatadogAPIClient::V1::DowntimesAPI* | [**create_downtime**](DowntimesAPI.md#create_downtime) | **POST** /api/v1/downtime | Schedule a downtime
*DatadogAPIClient::V1::DowntimesAPI* | [**get_downtime**](DowntimesAPI.md#get_downtime) | **GET** /api/v1/downtime/{downtime_id} | Get a downtime
*DatadogAPIClient::V1::DowntimesAPI* | [**list_downtimes**](DowntimesAPI.md#list_downtimes) | **GET** /api/v1/downtime | Get all downtimes
*DatadogAPIClient::V1::DowntimesAPI* | [**list_monitor_downtimes**](DowntimesAPI.md#list_monitor_downtimes) | **GET** /api/v1/monitor/{monitor_id}/downtimes | Get all downtimes for a monitor
*DatadogAPIClient::V1::DowntimesAPI* | [**update_downtime**](DowntimesAPI.md#update_downtime) | **PUT** /api/v1/downtime/{downtime_id} | Update a downtime
*DatadogAPIClient::V1::EventsAPI* | [**create_event**](EventsAPI.md#create_event) | **POST** /api/v1/events | Post an event
*DatadogAPIClient::V1::EventsAPI* | [**get_event**](EventsAPI.md#get_event) | **GET** /api/v1/events/{event_id} | Get an event
*DatadogAPIClient::V1::EventsAPI* | [**list_events**](EventsAPI.md#list_events) | **GET** /api/v1/events | Query the event stream
*DatadogAPIClient::V1::GCPIntegrationAPI* | [**create_gcp_integration**](GCPIntegrationAPI.md#create_gcp_integration) | **POST** /api/v1/integration/gcp | Create a GCP integration
*DatadogAPIClient::V1::GCPIntegrationAPI* | [**delete_gcp_integration**](GCPIntegrationAPI.md#delete_gcp_integration) | **DELETE** /api/v1/integration/gcp | Delete a GCP integration
*DatadogAPIClient::V1::GCPIntegrationAPI* | [**list_gcp_integration**](GCPIntegrationAPI.md#list_gcp_integration) | **GET** /api/v1/integration/gcp | List all GCP integrations
*DatadogAPIClient::V1::GCPIntegrationAPI* | [**update_gcp_integration**](GCPIntegrationAPI.md#update_gcp_integration) | **PUT** /api/v1/integration/gcp | Update a GCP integration
*DatadogAPIClient::V1::HostsAPI* | [**get_host_totals**](HostsAPI.md#get_host_totals) | **GET** /api/v1/hosts/totals | Get the total number of active hosts
*DatadogAPIClient::V1::HostsAPI* | [**list_hosts**](HostsAPI.md#list_hosts) | **GET** /api/v1/hosts | Get all hosts for your organization
*DatadogAPIClient::V1::HostsAPI* | [**mute_host**](HostsAPI.md#mute_host) | **POST** /api/v1/host/{host_name}/mute | Mute a host
*DatadogAPIClient::V1::HostsAPI* | [**unmute_host**](HostsAPI.md#unmute_host) | **POST** /api/v1/host/{host_name}/unmute | Unmute a host
*DatadogAPIClient::V1::IPRangesAPI* | [**get_ip_ranges**](IPRangesAPI.md#get_ip_ranges) | **GET** / | List IP Ranges
*DatadogAPIClient::V1::KeyManagementAPI* | [**create_api_key**](KeyManagementAPI.md#create_api_key) | **POST** /api/v1/api_key | Create an API key
*DatadogAPIClient::V1::KeyManagementAPI* | [**create_application_key**](KeyManagementAPI.md#create_application_key) | **POST** /api/v1/application_key | Create an application key
*DatadogAPIClient::V1::KeyManagementAPI* | [**delete_api_key**](KeyManagementAPI.md#delete_api_key) | **DELETE** /api/v1/api_key/{key} | Delete an API key
*DatadogAPIClient::V1::KeyManagementAPI* | [**delete_application_key**](KeyManagementAPI.md#delete_application_key) | **DELETE** /api/v1/application_key/{key} | Delete an application key
*DatadogAPIClient::V1::KeyManagementAPI* | [**get_api_key**](KeyManagementAPI.md#get_api_key) | **GET** /api/v1/api_key/{key} | Get API key
*DatadogAPIClient::V1::KeyManagementAPI* | [**get_application_key**](KeyManagementAPI.md#get_application_key) | **GET** /api/v1/application_key/{key} | Get an application key
*DatadogAPIClient::V1::KeyManagementAPI* | [**list_api_keys**](KeyManagementAPI.md#list_api_keys) | **GET** /api/v1/api_key | Get all API keys
*DatadogAPIClient::V1::KeyManagementAPI* | [**list_application_keys**](KeyManagementAPI.md#list_application_keys) | **GET** /api/v1/application_key | Get all application keys
*DatadogAPIClient::V1::KeyManagementAPI* | [**update_api_key**](KeyManagementAPI.md#update_api_key) | **PUT** /api/v1/api_key/{key} | Edit an API key
*DatadogAPIClient::V1::KeyManagementAPI* | [**update_application_key**](KeyManagementAPI.md#update_application_key) | **PUT** /api/v1/application_key/{key} | Edit an application key
*DatadogAPIClient::V1::LogsAPI* | [**list_logs**](LogsAPI.md#list_logs) | **POST** /api/v1/logs-queries/list | Search logs
*DatadogAPIClient::V1::LogsAPI* | [**submit_log**](LogsAPI.md#submit_log) | **POST** /v1/input | Send logs
*DatadogAPIClient::V1::LogsIndexesAPI* | [**create_logs_index**](LogsIndexesAPI.md#create_logs_index) | **POST** /api/v1/logs/config/indexes | Create an index
*DatadogAPIClient::V1::LogsIndexesAPI* | [**get_logs_index**](LogsIndexesAPI.md#get_logs_index) | **GET** /api/v1/logs/config/indexes/{name} | Get an index
*DatadogAPIClient::V1::LogsIndexesAPI* | [**get_logs_index_order**](LogsIndexesAPI.md#get_logs_index_order) | **GET** /api/v1/logs/config/index-order | Get indexes order
*DatadogAPIClient::V1::LogsIndexesAPI* | [**list_log_indexes**](LogsIndexesAPI.md#list_log_indexes) | **GET** /api/v1/logs/config/indexes | Get all indexes
*DatadogAPIClient::V1::LogsIndexesAPI* | [**update_logs_index**](LogsIndexesAPI.md#update_logs_index) | **PUT** /api/v1/logs/config/indexes/{name} | Update an index
*DatadogAPIClient::V1::LogsIndexesAPI* | [**update_logs_index_order**](LogsIndexesAPI.md#update_logs_index_order) | **PUT** /api/v1/logs/config/index-order | Update indexes order
*DatadogAPIClient::V1::LogsPipelinesAPI* | [**create_logs_pipeline**](LogsPipelinesAPI.md#create_logs_pipeline) | **POST** /api/v1/logs/config/pipelines | Create a pipeline
*DatadogAPIClient::V1::LogsPipelinesAPI* | [**delete_logs_pipeline**](LogsPipelinesAPI.md#delete_logs_pipeline) | **DELETE** /api/v1/logs/config/pipelines/{pipeline_id} | Delete a pipeline
*DatadogAPIClient::V1::LogsPipelinesAPI* | [**get_logs_pipeline**](LogsPipelinesAPI.md#get_logs_pipeline) | **GET** /api/v1/logs/config/pipelines/{pipeline_id} | Get a pipeline
*DatadogAPIClient::V1::LogsPipelinesAPI* | [**get_logs_pipeline_order**](LogsPipelinesAPI.md#get_logs_pipeline_order) | **GET** /api/v1/logs/config/pipeline-order | Get pipeline order
*DatadogAPIClient::V1::LogsPipelinesAPI* | [**list_logs_pipelines**](LogsPipelinesAPI.md#list_logs_pipelines) | **GET** /api/v1/logs/config/pipelines | Get all pipelines
*DatadogAPIClient::V1::LogsPipelinesAPI* | [**update_logs_pipeline**](LogsPipelinesAPI.md#update_logs_pipeline) | **PUT** /api/v1/logs/config/pipelines/{pipeline_id} | Update a pipeline
*DatadogAPIClient::V1::LogsPipelinesAPI* | [**update_logs_pipeline_order**](LogsPipelinesAPI.md#update_logs_pipeline_order) | **PUT** /api/v1/logs/config/pipeline-order | Update pipeline order
*DatadogAPIClient::V1::MetricsAPI* | [**get_metric_metadata**](MetricsAPI.md#get_metric_metadata) | **GET** /api/v1/metrics/{metric_name} | Get metric metadata
*DatadogAPIClient::V1::MetricsAPI* | [**list_active_metrics**](MetricsAPI.md#list_active_metrics) | **GET** /api/v1/metrics | Get active metrics list
*DatadogAPIClient::V1::MetricsAPI* | [**list_metrics**](MetricsAPI.md#list_metrics) | **GET** /api/v1/search | Search metrics
*DatadogAPIClient::V1::MetricsAPI* | [**query_metrics**](MetricsAPI.md#query_metrics) | **GET** /api/v1/query | Query timeseries points
*DatadogAPIClient::V1::MetricsAPI* | [**submit_metrics**](MetricsAPI.md#submit_metrics) | **POST** /api/v1/series | Submit metrics
*DatadogAPIClient::V1::MetricsAPI* | [**update_metric_metadata**](MetricsAPI.md#update_metric_metadata) | **PUT** /api/v1/metrics/{metric_name} | Edit metric metadata
*DatadogAPIClient::V1::MonitorsAPI* | [**check_can_delete_monitor**](MonitorsAPI.md#check_can_delete_monitor) | **GET** /api/v1/monitor/can_delete | Check if a monitor can be deleted
*DatadogAPIClient::V1::MonitorsAPI* | [**create_monitor**](MonitorsAPI.md#create_monitor) | **POST** /api/v1/monitor | Create a monitor
*DatadogAPIClient::V1::MonitorsAPI* | [**delete_monitor**](MonitorsAPI.md#delete_monitor) | **DELETE** /api/v1/monitor/{monitor_id} | Delete a monitor
*DatadogAPIClient::V1::MonitorsAPI* | [**get_monitor**](MonitorsAPI.md#get_monitor) | **GET** /api/v1/monitor/{monitor_id} | Get a monitor's details
*DatadogAPIClient::V1::MonitorsAPI* | [**list_monitors**](MonitorsAPI.md#list_monitors) | **GET** /api/v1/monitor | Get all monitor details
*DatadogAPIClient::V1::MonitorsAPI* | [**update_monitor**](MonitorsAPI.md#update_monitor) | **PUT** /api/v1/monitor/{monitor_id} | Edit a monitor
*DatadogAPIClient::V1::MonitorsAPI* | [**validate_monitor**](MonitorsAPI.md#validate_monitor) | **POST** /api/v1/monitor/validate | Validate a monitor
*DatadogAPIClient::V1::OrganizationsAPI* | [**create_child_org**](OrganizationsAPI.md#create_child_org) | **POST** /api/v1/org | Create a child organization
*DatadogAPIClient::V1::OrganizationsAPI* | [**get_org**](OrganizationsAPI.md#get_org) | **GET** /api/v1/org/{public_id} | Get organization information
*DatadogAPIClient::V1::OrganizationsAPI* | [**list_orgs**](OrganizationsAPI.md#list_orgs) | **GET** /api/v1/org | List your managed organizations
*DatadogAPIClient::V1::OrganizationsAPI* | [**update_org**](OrganizationsAPI.md#update_org) | **PUT** /api/v1/org/{public_id} | Update your organization
*DatadogAPIClient::V1::OrganizationsAPI* | [**upload_id_p_for_org**](OrganizationsAPI.md#upload_id_p_for_org) | **POST** /api/v1/org/{public_id}/idp_metadata | Upload IdP metadata
*DatadogAPIClient::V1::PagerDutyIntegrationAPI* | [**create_pager_duty_integration_service**](PagerDutyIntegrationAPI.md#create_pager_duty_integration_service) | **POST** /api/v1/integration/pagerduty/configuration/services | Create a new service object
*DatadogAPIClient::V1::PagerDutyIntegrationAPI* | [**delete_pager_duty_integration_service**](PagerDutyIntegrationAPI.md#delete_pager_duty_integration_service) | **DELETE** /api/v1/integration/pagerduty/configuration/services/{service_name} | Delete a single service object
*DatadogAPIClient::V1::PagerDutyIntegrationAPI* | [**get_pager_duty_integration_service**](PagerDutyIntegrationAPI.md#get_pager_duty_integration_service) | **GET** /api/v1/integration/pagerduty/configuration/services/{service_name} | Get a single service object
*DatadogAPIClient::V1::PagerDutyIntegrationAPI* | [**update_pager_duty_integration_service**](PagerDutyIntegrationAPI.md#update_pager_duty_integration_service) | **PUT** /api/v1/integration/pagerduty/configuration/services/{service_name} | Update a single service object
*DatadogAPIClient::V1::ServiceChecksAPI* | [**submit_service_check**](ServiceChecksAPI.md#submit_service_check) | **POST** /api/v1/check_run | Submit a Service Check
*DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI* | [**create_slo_correction**](ServiceLevelObjectiveCorrectionsAPI.md#create_slo_correction) | **POST** /api/v1/slo/correction | Create an SLO correction
*DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI* | [**delete_slo_correction**](ServiceLevelObjectiveCorrectionsAPI.md#delete_slo_correction) | **DELETE** /api/v1/slo/correction/{slo_correction_id} | Delete an SLO correction
*DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI* | [**get_slo_correction**](ServiceLevelObjectiveCorrectionsAPI.md#get_slo_correction) | **GET** /api/v1/slo/correction/{slo_correction_id} | Get an SLO correction for an SLO
*DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI* | [**list_slo_correction**](ServiceLevelObjectiveCorrectionsAPI.md#list_slo_correction) | **GET** /api/v1/slo/correction | Get all SLO corrections
*DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI* | [**update_slo_correction**](ServiceLevelObjectiveCorrectionsAPI.md#update_slo_correction) | **PATCH** /api/v1/slo/correction/{slo_correction_id} | Update an SLO correction
*DatadogAPIClient::V1::ServiceLevelObjectivesAPI* | [**check_can_delete_slo**](ServiceLevelObjectivesAPI.md#check_can_delete_slo) | **GET** /api/v1/slo/can_delete | Check if SLOs can be safely deleted
*DatadogAPIClient::V1::ServiceLevelObjectivesAPI* | [**create_slo**](ServiceLevelObjectivesAPI.md#create_slo) | **POST** /api/v1/slo | Create an SLO object
*DatadogAPIClient::V1::ServiceLevelObjectivesAPI* | [**delete_slo**](ServiceLevelObjectivesAPI.md#delete_slo) | **DELETE** /api/v1/slo/{slo_id} | Delete an SLO
*DatadogAPIClient::V1::ServiceLevelObjectivesAPI* | [**delete_slo_timeframe_in_bulk**](ServiceLevelObjectivesAPI.md#delete_slo_timeframe_in_bulk) | **POST** /api/v1/slo/bulk_delete | Bulk Delete SLO Timeframes
*DatadogAPIClient::V1::ServiceLevelObjectivesAPI* | [**get_slo**](ServiceLevelObjectivesAPI.md#get_slo) | **GET** /api/v1/slo/{slo_id} | Get an SLO's details
*DatadogAPIClient::V1::ServiceLevelObjectivesAPI* | [**get_slo_history**](ServiceLevelObjectivesAPI.md#get_slo_history) | **GET** /api/v1/slo/{slo_id}/history | Get an SLO's history
*DatadogAPIClient::V1::ServiceLevelObjectivesAPI* | [**list_slos**](ServiceLevelObjectivesAPI.md#list_slos) | **GET** /api/v1/slo | Get all SLOs
*DatadogAPIClient::V1::ServiceLevelObjectivesAPI* | [**update_slo**](ServiceLevelObjectivesAPI.md#update_slo) | **PUT** /api/v1/slo/{slo_id} | Update an SLO
*DatadogAPIClient::V1::SlackIntegrationAPI* | [**create_slack_integration_channel**](SlackIntegrationAPI.md#create_slack_integration_channel) | **POST** /api/v1/integration/slack/configuration/accounts/{account_name}/channels | Create a Slack integration channel
*DatadogAPIClient::V1::SlackIntegrationAPI* | [**get_slack_integration_channel**](SlackIntegrationAPI.md#get_slack_integration_channel) | **GET** /api/v1/integration/slack/configuration/accounts/{account_name}/channels/{channel_name} | Get a Slack integration channel
*DatadogAPIClient::V1::SlackIntegrationAPI* | [**get_slack_integration_channels**](SlackIntegrationAPI.md#get_slack_integration_channels) | **GET** /api/v1/integration/slack/configuration/accounts/{account_name}/channels | Get all channels in a Slack integration
*DatadogAPIClient::V1::SlackIntegrationAPI* | [**remove_slack_integration_channel**](SlackIntegrationAPI.md#remove_slack_integration_channel) | **DELETE** /api/v1/integration/slack/configuration/accounts/{account_name}/channels/{channel_name} | Remove a Slack integration channel
*DatadogAPIClient::V1::SlackIntegrationAPI* | [**update_slack_integration_channel**](SlackIntegrationAPI.md#update_slack_integration_channel) | **PATCH** /api/v1/integration/slack/configuration/accounts/{account_name}/channels/{channel_name} | Update a Slack integration channel
*DatadogAPIClient::V1::SnapshotsAPI* | [**get_graph_snapshot**](SnapshotsAPI.md#get_graph_snapshot) | **GET** /api/v1/graph/snapshot | Take graph snapshots
*DatadogAPIClient::V1::SyntheticsAPI* | [**create_global_variable**](SyntheticsAPI.md#create_global_variable) | **POST** /api/v1/synthetics/variables | Create a global variable
*DatadogAPIClient::V1::SyntheticsAPI* | [**create_private_location**](SyntheticsAPI.md#create_private_location) | **POST** /api/v1/synthetics/private-locations | Create a private location
*DatadogAPIClient::V1::SyntheticsAPI* | [**create_synthetics_api_test**](SyntheticsAPI.md#create_synthetics_api_test) | **POST** /api/v1/synthetics/tests/api | Create an API test
*DatadogAPIClient::V1::SyntheticsAPI* | [**create_synthetics_browser_test**](SyntheticsAPI.md#create_synthetics_browser_test) | **POST** /api/v1/synthetics/tests/browser | Create a browser test
*DatadogAPIClient::V1::SyntheticsAPI* | [**delete_global_variable**](SyntheticsAPI.md#delete_global_variable) | **DELETE** /api/v1/synthetics/variables/{variable_id} | Delete a global variable
*DatadogAPIClient::V1::SyntheticsAPI* | [**delete_private_location**](SyntheticsAPI.md#delete_private_location) | **DELETE** /api/v1/synthetics/private-locations/{location_id} | Delete a private location
*DatadogAPIClient::V1::SyntheticsAPI* | [**delete_tests**](SyntheticsAPI.md#delete_tests) | **POST** /api/v1/synthetics/tests/delete | Delete tests
*DatadogAPIClient::V1::SyntheticsAPI* | [**edit_global_variable**](SyntheticsAPI.md#edit_global_variable) | **PUT** /api/v1/synthetics/variables/{variable_id} | Edit a global variable
*DatadogAPIClient::V1::SyntheticsAPI* | [**get_api_test**](SyntheticsAPI.md#get_api_test) | **GET** /api/v1/synthetics/tests/api/{public_id} | Get an API test
*DatadogAPIClient::V1::SyntheticsAPI* | [**get_api_test_latest_results**](SyntheticsAPI.md#get_api_test_latest_results) | **GET** /api/v1/synthetics/tests/{public_id}/results | Get an API test's latest results summaries
*DatadogAPIClient::V1::SyntheticsAPI* | [**get_api_test_result**](SyntheticsAPI.md#get_api_test_result) | **GET** /api/v1/synthetics/tests/{public_id}/results/{result_id} | Get an API test result
*DatadogAPIClient::V1::SyntheticsAPI* | [**get_browser_test**](SyntheticsAPI.md#get_browser_test) | **GET** /api/v1/synthetics/tests/browser/{public_id} | Get a browser test
*DatadogAPIClient::V1::SyntheticsAPI* | [**get_browser_test_latest_results**](SyntheticsAPI.md#get_browser_test_latest_results) | **GET** /api/v1/synthetics/tests/browser/{public_id}/results | Get a browser test's latest results summaries
*DatadogAPIClient::V1::SyntheticsAPI* | [**get_browser_test_result**](SyntheticsAPI.md#get_browser_test_result) | **GET** /api/v1/synthetics/tests/browser/{public_id}/results/{result_id} | Get a browser test result
*DatadogAPIClient::V1::SyntheticsAPI* | [**get_global_variable**](SyntheticsAPI.md#get_global_variable) | **GET** /api/v1/synthetics/variables/{variable_id} | Get a global variable
*DatadogAPIClient::V1::SyntheticsAPI* | [**get_private_location**](SyntheticsAPI.md#get_private_location) | **GET** /api/v1/synthetics/private-locations/{location_id} | Get a private location
*DatadogAPIClient::V1::SyntheticsAPI* | [**get_test**](SyntheticsAPI.md#get_test) | **GET** /api/v1/synthetics/tests/{public_id} | Get a test configuration
*DatadogAPIClient::V1::SyntheticsAPI* | [**list_locations**](SyntheticsAPI.md#list_locations) | **GET** /api/v1/synthetics/locations | Get all locations (public and private)
*DatadogAPIClient::V1::SyntheticsAPI* | [**list_tests**](SyntheticsAPI.md#list_tests) | **GET** /api/v1/synthetics/tests | Get the list of all tests
*DatadogAPIClient::V1::SyntheticsAPI* | [**trigger_ci_tests**](SyntheticsAPI.md#trigger_ci_tests) | **POST** /api/v1/synthetics/tests/trigger/ci | Trigger tests from CI/CD pipelines
*DatadogAPIClient::V1::SyntheticsAPI* | [**update_api_test**](SyntheticsAPI.md#update_api_test) | **PUT** /api/v1/synthetics/tests/api/{public_id} | Edit an API test
*DatadogAPIClient::V1::SyntheticsAPI* | [**update_browser_test**](SyntheticsAPI.md#update_browser_test) | **PUT** /api/v1/synthetics/tests/browser/{public_id} | Edit a browser test
*DatadogAPIClient::V1::SyntheticsAPI* | [**update_private_location**](SyntheticsAPI.md#update_private_location) | **PUT** /api/v1/synthetics/private-locations/{location_id} | Edit a private location
*DatadogAPIClient::V1::SyntheticsAPI* | [**update_test_pause_status**](SyntheticsAPI.md#update_test_pause_status) | **PUT** /api/v1/synthetics/tests/{public_id}/status | Pause or start a test
*DatadogAPIClient::V1::TagsAPI* | [**create_host_tags**](TagsAPI.md#create_host_tags) | **POST** /api/v1/tags/hosts/{host_name} | Add tags to a host
*DatadogAPIClient::V1::TagsAPI* | [**delete_host_tags**](TagsAPI.md#delete_host_tags) | **DELETE** /api/v1/tags/hosts/{host_name} | Remove host tags
*DatadogAPIClient::V1::TagsAPI* | [**get_host_tags**](TagsAPI.md#get_host_tags) | **GET** /api/v1/tags/hosts/{host_name} | Get host tags
*DatadogAPIClient::V1::TagsAPI* | [**list_host_tags**](TagsAPI.md#list_host_tags) | **GET** /api/v1/tags/hosts | Get Tags
*DatadogAPIClient::V1::TagsAPI* | [**update_host_tags**](TagsAPI.md#update_host_tags) | **PUT** /api/v1/tags/hosts/{host_name} | Update host tags
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_daily_custom_reports**](UsageMeteringAPI.md#get_daily_custom_reports) | **GET** /api/v1/daily_custom_reports | Get the list of available daily custom reports
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_incident_management**](UsageMeteringAPI.md#get_incident_management) | **GET** /api/v1/usage/incident-management | Get hourly usage for incident management
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_ingested_spans**](UsageMeteringAPI.md#get_ingested_spans) | **GET** /api/v1/usage/ingested-spans | Get hourly usage for ingested spans
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_monthly_custom_reports**](UsageMeteringAPI.md#get_monthly_custom_reports) | **GET** /api/v1/monthly_custom_reports | Get the list of available monthly custom reports
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_specified_daily_custom_reports**](UsageMeteringAPI.md#get_specified_daily_custom_reports) | **GET** /api/v1/daily_custom_reports/{report_id} | Get specified daily custom reports
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_specified_monthly_custom_reports**](UsageMeteringAPI.md#get_specified_monthly_custom_reports) | **GET** /api/v1/monthly_custom_reports/{report_id} | Get specified monthly custom reports
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_tracing_without_limits**](UsageMeteringAPI.md#get_tracing_without_limits) | **GET** /api/v1/usage/tracing-without-limits | Get hourly usage for tracing without limits
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_analyzed_logs**](UsageMeteringAPI.md#get_usage_analyzed_logs) | **GET** /api/v1/usage/analyzed_logs | Get hourly usage for analyzed logs
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_attribution**](UsageMeteringAPI.md#get_usage_attribution) | **GET** /api/v1/usage/attribution | Get Usage Attribution
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_billable_summary**](UsageMeteringAPI.md#get_usage_billable_summary) | **GET** /api/v1/usage/billable-summary | Get billable usage across your account
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_compliance_monitoring**](UsageMeteringAPI.md#get_usage_compliance_monitoring) | **GET** /api/v1/usage/compliance-monitoring | Get hourly usage for Compliance Monitoring
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_fargate**](UsageMeteringAPI.md#get_usage_fargate) | **GET** /api/v1/usage/fargate | Get hourly usage for Fargate
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_hosts**](UsageMeteringAPI.md#get_usage_hosts) | **GET** /api/v1/usage/hosts | Get hourly usage for hosts and containers
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_indexed_spans**](UsageMeteringAPI.md#get_usage_indexed_spans) | **GET** /api/v1/usage/indexed-spans | Get hourly usage for indexed spans
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_internet_of_things**](UsageMeteringAPI.md#get_usage_internet_of_things) | **GET** /api/v1/usage/iot | Get hourly usage for IoT
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_lambda**](UsageMeteringAPI.md#get_usage_lambda) | **GET** /api/v1/usage/aws_lambda | Get hourly usage for Lambda
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_logs**](UsageMeteringAPI.md#get_usage_logs) | **GET** /api/v1/usage/logs | Get hourly usage for Logs
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_logs_by_index**](UsageMeteringAPI.md#get_usage_logs_by_index) | **GET** /api/v1/usage/logs_by_index | Get hourly usage for Logs by Index
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_network_flows**](UsageMeteringAPI.md#get_usage_network_flows) | **GET** /api/v1/usage/network_flows | Get hourly usage for Network Flows
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_network_hosts**](UsageMeteringAPI.md#get_usage_network_hosts) | **GET** /api/v1/usage/network_hosts | Get hourly usage for Network Hosts
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_profiling**](UsageMeteringAPI.md#get_usage_profiling) | **GET** /api/v1/usage/profiling | Get hourly usage for profiled hosts
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_rum_sessions**](UsageMeteringAPI.md#get_usage_rum_sessions) | **GET** /api/v1/usage/rum_sessions | Get hourly usage for RUM Sessions
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_snmp**](UsageMeteringAPI.md#get_usage_snmp) | **GET** /api/v1/usage/snmp | Get hourly usage for SNMP devices
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_summary**](UsageMeteringAPI.md#get_usage_summary) | **GET** /api/v1/usage/summary | Get usage across your multi-org account
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_synthetics**](UsageMeteringAPI.md#get_usage_synthetics) | **GET** /api/v1/usage/synthetics | Get hourly usage for Synthetics Checks
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_synthetics_api**](UsageMeteringAPI.md#get_usage_synthetics_api) | **GET** /api/v1/usage/synthetics_api | Get hourly usage for Synthetics API Checks
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_synthetics_browser**](UsageMeteringAPI.md#get_usage_synthetics_browser) | **GET** /api/v1/usage/synthetics_browser | Get hourly usage for Synthetics Browser Checks
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_timeseries**](UsageMeteringAPI.md#get_usage_timeseries) | **GET** /api/v1/usage/timeseries | Get hourly usage for custom metrics
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_top_avg_metrics**](UsageMeteringAPI.md#get_usage_top_avg_metrics) | **GET** /api/v1/usage/top_avg_metrics | Get top custom metrics by hourly average
*DatadogAPIClient::V1::UsageMeteringAPI* | [**get_usage_trace**](UsageMeteringAPI.md#get_usage_trace) | **GET** /api/v1/usage/traces | Get hourly usage for Trace Search
*DatadogAPIClient::V1::UsersAPI* | [**create_user**](UsersAPI.md#create_user) | **POST** /api/v1/user | Create a user
*DatadogAPIClient::V1::UsersAPI* | [**disable_user**](UsersAPI.md#disable_user) | **DELETE** /api/v1/user/{user_handle} | Disable a user
*DatadogAPIClient::V1::UsersAPI* | [**get_user**](UsersAPI.md#get_user) | **GET** /api/v1/user/{user_handle} | Get user details
*DatadogAPIClient::V1::UsersAPI* | [**list_users**](UsersAPI.md#list_users) | **GET** /api/v1/user | List all users
*DatadogAPIClient::V1::UsersAPI* | [**update_user**](UsersAPI.md#update_user) | **PUT** /api/v1/user/{user_handle} | Update a user


## Documentation for Models

 - [DatadogAPIClient::V1::APIErrorResponse](APIErrorResponse.md)
 - [DatadogAPIClient::V1::AWSAccount](AWSAccount.md)
 - [DatadogAPIClient::V1::AWSAccountAndLambdaRequest](AWSAccountAndLambdaRequest.md)
 - [DatadogAPIClient::V1::AWSAccountCreateResponse](AWSAccountCreateResponse.md)
 - [DatadogAPIClient::V1::AWSAccountListResponse](AWSAccountListResponse.md)
 - [DatadogAPIClient::V1::AWSLogsAsyncError](AWSLogsAsyncError.md)
 - [DatadogAPIClient::V1::AWSLogsAsyncResponse](AWSLogsAsyncResponse.md)
 - [DatadogAPIClient::V1::AWSLogsLambda](AWSLogsLambda.md)
 - [DatadogAPIClient::V1::AWSLogsListResponse](AWSLogsListResponse.md)
 - [DatadogAPIClient::V1::AWSLogsListServicesResponse](AWSLogsListServicesResponse.md)
 - [DatadogAPIClient::V1::AWSLogsServicesRequest](AWSLogsServicesRequest.md)
 - [DatadogAPIClient::V1::AWSNamespace](AWSNamespace.md)
 - [DatadogAPIClient::V1::AWSTagFilter](AWSTagFilter.md)
 - [DatadogAPIClient::V1::AWSTagFilterCreateRequest](AWSTagFilterCreateRequest.md)
 - [DatadogAPIClient::V1::AWSTagFilterDeleteRequest](AWSTagFilterDeleteRequest.md)
 - [DatadogAPIClient::V1::AWSTagFilterListResponse](AWSTagFilterListResponse.md)
 - [DatadogAPIClient::V1::AccessRole](AccessRole.md)
 - [DatadogAPIClient::V1::AlertGraphWidgetDefinition](AlertGraphWidgetDefinition.md)
 - [DatadogAPIClient::V1::AlertGraphWidgetDefinitionType](AlertGraphWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::AlertValueWidgetDefinition](AlertValueWidgetDefinition.md)
 - [DatadogAPIClient::V1::AlertValueWidgetDefinitionType](AlertValueWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::ApiKey](ApiKey.md)
 - [DatadogAPIClient::V1::ApiKeyListResponse](ApiKeyListResponse.md)
 - [DatadogAPIClient::V1::ApiKeyResponse](ApiKeyResponse.md)
 - [DatadogAPIClient::V1::ApmStatsQueryColumnType](ApmStatsQueryColumnType.md)
 - [DatadogAPIClient::V1::ApmStatsQueryDefinition](ApmStatsQueryDefinition.md)
 - [DatadogAPIClient::V1::ApmStatsQueryRowType](ApmStatsQueryRowType.md)
 - [DatadogAPIClient::V1::ApplicationKey](ApplicationKey.md)
 - [DatadogAPIClient::V1::ApplicationKeyListResponse](ApplicationKeyListResponse.md)
 - [DatadogAPIClient::V1::ApplicationKeyResponse](ApplicationKeyResponse.md)
 - [DatadogAPIClient::V1::AuthenticationValidationResponse](AuthenticationValidationResponse.md)
 - [DatadogAPIClient::V1::AzureAccount](AzureAccount.md)
 - [DatadogAPIClient::V1::CancelDowntimesByScopeRequest](CancelDowntimesByScopeRequest.md)
 - [DatadogAPIClient::V1::CanceledDowntimesIds](CanceledDowntimesIds.md)
 - [DatadogAPIClient::V1::ChangeWidgetDefinition](ChangeWidgetDefinition.md)
 - [DatadogAPIClient::V1::ChangeWidgetDefinitionType](ChangeWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::ChangeWidgetRequest](ChangeWidgetRequest.md)
 - [DatadogAPIClient::V1::CheckCanDeleteMonitorResponse](CheckCanDeleteMonitorResponse.md)
 - [DatadogAPIClient::V1::CheckCanDeleteMonitorResponseData](CheckCanDeleteMonitorResponseData.md)
 - [DatadogAPIClient::V1::CheckCanDeleteSLOResponse](CheckCanDeleteSLOResponse.md)
 - [DatadogAPIClient::V1::CheckCanDeleteSLOResponseData](CheckCanDeleteSLOResponseData.md)
 - [DatadogAPIClient::V1::CheckStatusWidgetDefinition](CheckStatusWidgetDefinition.md)
 - [DatadogAPIClient::V1::CheckStatusWidgetDefinitionType](CheckStatusWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::ContentEncoding](ContentEncoding.md)
 - [DatadogAPIClient::V1::Creator](Creator.md)
 - [DatadogAPIClient::V1::Dashboard](Dashboard.md)
 - [DatadogAPIClient::V1::DashboardDeleteResponse](DashboardDeleteResponse.md)
 - [DatadogAPIClient::V1::DashboardLayoutType](DashboardLayoutType.md)
 - [DatadogAPIClient::V1::DashboardList](DashboardList.md)
 - [DatadogAPIClient::V1::DashboardListDeleteResponse](DashboardListDeleteResponse.md)
 - [DatadogAPIClient::V1::DashboardListListResponse](DashboardListListResponse.md)
 - [DatadogAPIClient::V1::DashboardReflowType](DashboardReflowType.md)
 - [DatadogAPIClient::V1::DashboardSummary](DashboardSummary.md)
 - [DatadogAPIClient::V1::DashboardSummaryDefinition](DashboardSummaryDefinition.md)
 - [DatadogAPIClient::V1::DashboardTemplateVariable](DashboardTemplateVariable.md)
 - [DatadogAPIClient::V1::DashboardTemplateVariablePreset](DashboardTemplateVariablePreset.md)
 - [DatadogAPIClient::V1::DashboardTemplateVariablePresetValue](DashboardTemplateVariablePresetValue.md)
 - [DatadogAPIClient::V1::DeletedMonitor](DeletedMonitor.md)
 - [DatadogAPIClient::V1::DistributionWidgetDefinition](DistributionWidgetDefinition.md)
 - [DatadogAPIClient::V1::DistributionWidgetDefinitionType](DistributionWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::DistributionWidgetRequest](DistributionWidgetRequest.md)
 - [DatadogAPIClient::V1::DistributionWidgetXAxis](DistributionWidgetXAxis.md)
 - [DatadogAPIClient::V1::DistributionWidgetYAxis](DistributionWidgetYAxis.md)
 - [DatadogAPIClient::V1::Downtime](Downtime.md)
 - [DatadogAPIClient::V1::DowntimeRecurrence](DowntimeRecurrence.md)
 - [DatadogAPIClient::V1::Event](Event.md)
 - [DatadogAPIClient::V1::EventAlertType](EventAlertType.md)
 - [DatadogAPIClient::V1::EventCreateRequest](EventCreateRequest.md)
 - [DatadogAPIClient::V1::EventCreateResponse](EventCreateResponse.md)
 - [DatadogAPIClient::V1::EventListResponse](EventListResponse.md)
 - [DatadogAPIClient::V1::EventPriority](EventPriority.md)
 - [DatadogAPIClient::V1::EventQueryDefinition](EventQueryDefinition.md)
 - [DatadogAPIClient::V1::EventResponse](EventResponse.md)
 - [DatadogAPIClient::V1::EventStreamWidgetDefinition](EventStreamWidgetDefinition.md)
 - [DatadogAPIClient::V1::EventStreamWidgetDefinitionType](EventStreamWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::EventTimelineWidgetDefinition](EventTimelineWidgetDefinition.md)
 - [DatadogAPIClient::V1::EventTimelineWidgetDefinitionType](EventTimelineWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::FormulaAndFunctionEventAggregation](FormulaAndFunctionEventAggregation.md)
 - [DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinition](FormulaAndFunctionEventQueryDefinition.md)
 - [DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionCompute](FormulaAndFunctionEventQueryDefinitionCompute.md)
 - [DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionSearch](FormulaAndFunctionEventQueryDefinitionSearch.md)
 - [DatadogAPIClient::V1::FormulaAndFunctionEventQueryGroupBy](FormulaAndFunctionEventQueryGroupBy.md)
 - [DatadogAPIClient::V1::FormulaAndFunctionEventQueryGroupBySort](FormulaAndFunctionEventQueryGroupBySort.md)
 - [DatadogAPIClient::V1::FormulaAndFunctionEventsDataSource](FormulaAndFunctionEventsDataSource.md)
 - [DatadogAPIClient::V1::FormulaAndFunctionMetricAggregation](FormulaAndFunctionMetricAggregation.md)
 - [DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource](FormulaAndFunctionMetricDataSource.md)
 - [DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition](FormulaAndFunctionMetricQueryDefinition.md)
 - [DatadogAPIClient::V1::FormulaAndFunctionProcessQueryDataSource](FormulaAndFunctionProcessQueryDataSource.md)
 - [DatadogAPIClient::V1::FormulaAndFunctionProcessQueryDefinition](FormulaAndFunctionProcessQueryDefinition.md)
 - [DatadogAPIClient::V1::FormulaAndFunctionQueryDefinition](FormulaAndFunctionQueryDefinition.md)
 - [DatadogAPIClient::V1::FormulaAndFunctionResponseFormat](FormulaAndFunctionResponseFormat.md)
 - [DatadogAPIClient::V1::FreeTextWidgetDefinition](FreeTextWidgetDefinition.md)
 - [DatadogAPIClient::V1::FreeTextWidgetDefinitionType](FreeTextWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::GCPAccount](GCPAccount.md)
 - [DatadogAPIClient::V1::GeomapWidgetDefinition](GeomapWidgetDefinition.md)
 - [DatadogAPIClient::V1::GeomapWidgetDefinitionStyle](GeomapWidgetDefinitionStyle.md)
 - [DatadogAPIClient::V1::GeomapWidgetDefinitionType](GeomapWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::GeomapWidgetDefinitionView](GeomapWidgetDefinitionView.md)
 - [DatadogAPIClient::V1::GeomapWidgetRequest](GeomapWidgetRequest.md)
 - [DatadogAPIClient::V1::GraphSnapshot](GraphSnapshot.md)
 - [DatadogAPIClient::V1::GroupWidgetDefinition](GroupWidgetDefinition.md)
 - [DatadogAPIClient::V1::GroupWidgetDefinitionType](GroupWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::HTTPLogError](HTTPLogError.md)
 - [DatadogAPIClient::V1::HTTPLogItem](HTTPLogItem.md)
 - [DatadogAPIClient::V1::HTTPMethod](HTTPMethod.md)
 - [DatadogAPIClient::V1::HeatMapWidgetDefinition](HeatMapWidgetDefinition.md)
 - [DatadogAPIClient::V1::HeatMapWidgetDefinitionType](HeatMapWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::HeatMapWidgetRequest](HeatMapWidgetRequest.md)
 - [DatadogAPIClient::V1::Host](Host.md)
 - [DatadogAPIClient::V1::HostListResponse](HostListResponse.md)
 - [DatadogAPIClient::V1::HostMapRequest](HostMapRequest.md)
 - [DatadogAPIClient::V1::HostMapWidgetDefinition](HostMapWidgetDefinition.md)
 - [DatadogAPIClient::V1::HostMapWidgetDefinitionRequests](HostMapWidgetDefinitionRequests.md)
 - [DatadogAPIClient::V1::HostMapWidgetDefinitionStyle](HostMapWidgetDefinitionStyle.md)
 - [DatadogAPIClient::V1::HostMapWidgetDefinitionType](HostMapWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::HostMeta](HostMeta.md)
 - [DatadogAPIClient::V1::HostMetrics](HostMetrics.md)
 - [DatadogAPIClient::V1::HostMuteResponse](HostMuteResponse.md)
 - [DatadogAPIClient::V1::HostMuteSettings](HostMuteSettings.md)
 - [DatadogAPIClient::V1::HostTags](HostTags.md)
 - [DatadogAPIClient::V1::HostTotals](HostTotals.md)
 - [DatadogAPIClient::V1::IFrameWidgetDefinition](IFrameWidgetDefinition.md)
 - [DatadogAPIClient::V1::IFrameWidgetDefinitionType](IFrameWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::IPPrefixesAPI](IPPrefixesAPI.md)
 - [DatadogAPIClient::V1::IPPrefixesAPM](IPPrefixesAPM.md)
 - [DatadogAPIClient::V1::IPPrefixesAgents](IPPrefixesAgents.md)
 - [DatadogAPIClient::V1::IPPrefixesLogs](IPPrefixesLogs.md)
 - [DatadogAPIClient::V1::IPPrefixesProcess](IPPrefixesProcess.md)
 - [DatadogAPIClient::V1::IPPrefixesSynthetics](IPPrefixesSynthetics.md)
 - [DatadogAPIClient::V1::IPPrefixesWebhooks](IPPrefixesWebhooks.md)
 - [DatadogAPIClient::V1::IPRanges](IPRanges.md)
 - [DatadogAPIClient::V1::IdpFormData](IdpFormData.md)
 - [DatadogAPIClient::V1::IdpResponse](IdpResponse.md)
 - [DatadogAPIClient::V1::ImageWidgetDefinition](ImageWidgetDefinition.md)
 - [DatadogAPIClient::V1::ImageWidgetDefinitionType](ImageWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::IntakePayloadAccepted](IntakePayloadAccepted.md)
 - [DatadogAPIClient::V1::Log](Log.md)
 - [DatadogAPIClient::V1::LogContent](LogContent.md)
 - [DatadogAPIClient::V1::LogQueryDefinition](LogQueryDefinition.md)
 - [DatadogAPIClient::V1::LogQueryDefinitionGroupBy](LogQueryDefinitionGroupBy.md)
 - [DatadogAPIClient::V1::LogQueryDefinitionGroupBySort](LogQueryDefinitionGroupBySort.md)
 - [DatadogAPIClient::V1::LogQueryDefinitionSearch](LogQueryDefinitionSearch.md)
 - [DatadogAPIClient::V1::LogStreamWidgetDefinition](LogStreamWidgetDefinition.md)
 - [DatadogAPIClient::V1::LogStreamWidgetDefinitionType](LogStreamWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::LogsAPIError](LogsAPIError.md)
 - [DatadogAPIClient::V1::LogsAPIErrorResponse](LogsAPIErrorResponse.md)
 - [DatadogAPIClient::V1::LogsArithmeticProcessor](LogsArithmeticProcessor.md)
 - [DatadogAPIClient::V1::LogsArithmeticProcessorType](LogsArithmeticProcessorType.md)
 - [DatadogAPIClient::V1::LogsAttributeRemapper](LogsAttributeRemapper.md)
 - [DatadogAPIClient::V1::LogsAttributeRemapperType](LogsAttributeRemapperType.md)
 - [DatadogAPIClient::V1::LogsCategoryProcessor](LogsCategoryProcessor.md)
 - [DatadogAPIClient::V1::LogsCategoryProcessorCategory](LogsCategoryProcessorCategory.md)
 - [DatadogAPIClient::V1::LogsCategoryProcessorType](LogsCategoryProcessorType.md)
 - [DatadogAPIClient::V1::LogsDateRemapper](LogsDateRemapper.md)
 - [DatadogAPIClient::V1::LogsDateRemapperType](LogsDateRemapperType.md)
 - [DatadogAPIClient::V1::LogsExclusion](LogsExclusion.md)
 - [DatadogAPIClient::V1::LogsExclusionFilter](LogsExclusionFilter.md)
 - [DatadogAPIClient::V1::LogsFilter](LogsFilter.md)
 - [DatadogAPIClient::V1::LogsGeoIPParser](LogsGeoIPParser.md)
 - [DatadogAPIClient::V1::LogsGeoIPParserType](LogsGeoIPParserType.md)
 - [DatadogAPIClient::V1::LogsGrokParser](LogsGrokParser.md)
 - [DatadogAPIClient::V1::LogsGrokParserRules](LogsGrokParserRules.md)
 - [DatadogAPIClient::V1::LogsGrokParserType](LogsGrokParserType.md)
 - [DatadogAPIClient::V1::LogsIndex](LogsIndex.md)
 - [DatadogAPIClient::V1::LogsIndexListResponse](LogsIndexListResponse.md)
 - [DatadogAPIClient::V1::LogsIndexUpdateRequest](LogsIndexUpdateRequest.md)
 - [DatadogAPIClient::V1::LogsIndexesOrder](LogsIndexesOrder.md)
 - [DatadogAPIClient::V1::LogsListRequest](LogsListRequest.md)
 - [DatadogAPIClient::V1::LogsListRequestTime](LogsListRequestTime.md)
 - [DatadogAPIClient::V1::LogsListResponse](LogsListResponse.md)
 - [DatadogAPIClient::V1::LogsLookupProcessor](LogsLookupProcessor.md)
 - [DatadogAPIClient::V1::LogsLookupProcessorType](LogsLookupProcessorType.md)
 - [DatadogAPIClient::V1::LogsMessageRemapper](LogsMessageRemapper.md)
 - [DatadogAPIClient::V1::LogsMessageRemapperType](LogsMessageRemapperType.md)
 - [DatadogAPIClient::V1::LogsPipeline](LogsPipeline.md)
 - [DatadogAPIClient::V1::LogsPipelineProcessor](LogsPipelineProcessor.md)
 - [DatadogAPIClient::V1::LogsPipelineProcessorType](LogsPipelineProcessorType.md)
 - [DatadogAPIClient::V1::LogsPipelinesOrder](LogsPipelinesOrder.md)
 - [DatadogAPIClient::V1::LogsProcessor](LogsProcessor.md)
 - [DatadogAPIClient::V1::LogsQueryCompute](LogsQueryCompute.md)
 - [DatadogAPIClient::V1::LogsServiceRemapper](LogsServiceRemapper.md)
 - [DatadogAPIClient::V1::LogsServiceRemapperType](LogsServiceRemapperType.md)
 - [DatadogAPIClient::V1::LogsSort](LogsSort.md)
 - [DatadogAPIClient::V1::LogsStatusRemapper](LogsStatusRemapper.md)
 - [DatadogAPIClient::V1::LogsStatusRemapperType](LogsStatusRemapperType.md)
 - [DatadogAPIClient::V1::LogsStringBuilderProcessor](LogsStringBuilderProcessor.md)
 - [DatadogAPIClient::V1::LogsStringBuilderProcessorType](LogsStringBuilderProcessorType.md)
 - [DatadogAPIClient::V1::LogsTraceRemapper](LogsTraceRemapper.md)
 - [DatadogAPIClient::V1::LogsTraceRemapperType](LogsTraceRemapperType.md)
 - [DatadogAPIClient::V1::LogsURLParser](LogsURLParser.md)
 - [DatadogAPIClient::V1::LogsURLParserType](LogsURLParserType.md)
 - [DatadogAPIClient::V1::LogsUserAgentParser](LogsUserAgentParser.md)
 - [DatadogAPIClient::V1::LogsUserAgentParserType](LogsUserAgentParserType.md)
 - [DatadogAPIClient::V1::MetricMetadata](MetricMetadata.md)
 - [DatadogAPIClient::V1::MetricSearchResponse](MetricSearchResponse.md)
 - [DatadogAPIClient::V1::MetricSearchResponseResults](MetricSearchResponseResults.md)
 - [DatadogAPIClient::V1::MetricsListResponse](MetricsListResponse.md)
 - [DatadogAPIClient::V1::MetricsPayload](MetricsPayload.md)
 - [DatadogAPIClient::V1::MetricsQueryMetadata](MetricsQueryMetadata.md)
 - [DatadogAPIClient::V1::MetricsQueryResponse](MetricsQueryResponse.md)
 - [DatadogAPIClient::V1::MetricsQueryUnit](MetricsQueryUnit.md)
 - [DatadogAPIClient::V1::Monitor](Monitor.md)
 - [DatadogAPIClient::V1::MonitorDeviceID](MonitorDeviceID.md)
 - [DatadogAPIClient::V1::MonitorOptions](MonitorOptions.md)
 - [DatadogAPIClient::V1::MonitorOptionsAggregation](MonitorOptionsAggregation.md)
 - [DatadogAPIClient::V1::MonitorOverallStates](MonitorOverallStates.md)
 - [DatadogAPIClient::V1::MonitorState](MonitorState.md)
 - [DatadogAPIClient::V1::MonitorStateGroup](MonitorStateGroup.md)
 - [DatadogAPIClient::V1::MonitorSummaryWidgetDefinition](MonitorSummaryWidgetDefinition.md)
 - [DatadogAPIClient::V1::MonitorSummaryWidgetDefinitionType](MonitorSummaryWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::MonitorThresholdWindowOptions](MonitorThresholdWindowOptions.md)
 - [DatadogAPIClient::V1::MonitorThresholds](MonitorThresholds.md)
 - [DatadogAPIClient::V1::MonitorType](MonitorType.md)
 - [DatadogAPIClient::V1::MonitorUpdateRequest](MonitorUpdateRequest.md)
 - [DatadogAPIClient::V1::NoteWidgetDefinition](NoteWidgetDefinition.md)
 - [DatadogAPIClient::V1::NoteWidgetDefinitionType](NoteWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::Organization](Organization.md)
 - [DatadogAPIClient::V1::OrganizationBilling](OrganizationBilling.md)
 - [DatadogAPIClient::V1::OrganizationCreateBody](OrganizationCreateBody.md)
 - [DatadogAPIClient::V1::OrganizationCreateResponse](OrganizationCreateResponse.md)
 - [DatadogAPIClient::V1::OrganizationListResponse](OrganizationListResponse.md)
 - [DatadogAPIClient::V1::OrganizationResponse](OrganizationResponse.md)
 - [DatadogAPIClient::V1::OrganizationSettings](OrganizationSettings.md)
 - [DatadogAPIClient::V1::OrganizationSettingsSaml](OrganizationSettingsSaml.md)
 - [DatadogAPIClient::V1::OrganizationSettingsSamlAutocreateUsersDomains](OrganizationSettingsSamlAutocreateUsersDomains.md)
 - [DatadogAPIClient::V1::OrganizationSettingsSamlIdpInitiatedLogin](OrganizationSettingsSamlIdpInitiatedLogin.md)
 - [DatadogAPIClient::V1::OrganizationSettingsSamlStrictMode](OrganizationSettingsSamlStrictMode.md)
 - [DatadogAPIClient::V1::OrganizationSubscription](OrganizationSubscription.md)
 - [DatadogAPIClient::V1::PagerDutyService](PagerDutyService.md)
 - [DatadogAPIClient::V1::PagerDutyServiceKey](PagerDutyServiceKey.md)
 - [DatadogAPIClient::V1::PagerDutyServiceName](PagerDutyServiceName.md)
 - [DatadogAPIClient::V1::ProcessQueryDefinition](ProcessQueryDefinition.md)
 - [DatadogAPIClient::V1::QuerySortOrder](QuerySortOrder.md)
 - [DatadogAPIClient::V1::QueryValueWidgetDefinition](QueryValueWidgetDefinition.md)
 - [DatadogAPIClient::V1::QueryValueWidgetDefinitionType](QueryValueWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::QueryValueWidgetRequest](QueryValueWidgetRequest.md)
 - [DatadogAPIClient::V1::SLOBulkDeleteError](SLOBulkDeleteError.md)
 - [DatadogAPIClient::V1::SLOBulkDeleteResponse](SLOBulkDeleteResponse.md)
 - [DatadogAPIClient::V1::SLOBulkDeleteResponseData](SLOBulkDeleteResponseData.md)
 - [DatadogAPIClient::V1::SLOCorrection](SLOCorrection.md)
 - [DatadogAPIClient::V1::SLOCorrectionCategory](SLOCorrectionCategory.md)
 - [DatadogAPIClient::V1::SLOCorrectionCreateData](SLOCorrectionCreateData.md)
 - [DatadogAPIClient::V1::SLOCorrectionCreateRequest](SLOCorrectionCreateRequest.md)
 - [DatadogAPIClient::V1::SLOCorrectionCreateRequestAttributes](SLOCorrectionCreateRequestAttributes.md)
 - [DatadogAPIClient::V1::SLOCorrectionListResponse](SLOCorrectionListResponse.md)
 - [DatadogAPIClient::V1::SLOCorrectionResponse](SLOCorrectionResponse.md)
 - [DatadogAPIClient::V1::SLOCorrectionResponseAttributes](SLOCorrectionResponseAttributes.md)
 - [DatadogAPIClient::V1::SLOCorrectionType](SLOCorrectionType.md)
 - [DatadogAPIClient::V1::SLOCorrectionUpdateData](SLOCorrectionUpdateData.md)
 - [DatadogAPIClient::V1::SLOCorrectionUpdateRequest](SLOCorrectionUpdateRequest.md)
 - [DatadogAPIClient::V1::SLOCorrectionUpdateRequestAttributes](SLOCorrectionUpdateRequestAttributes.md)
 - [DatadogAPIClient::V1::SLODeleteResponse](SLODeleteResponse.md)
 - [DatadogAPIClient::V1::SLOErrorTimeframe](SLOErrorTimeframe.md)
 - [DatadogAPIClient::V1::SLOHistoryMetrics](SLOHistoryMetrics.md)
 - [DatadogAPIClient::V1::SLOHistoryMetricsSeries](SLOHistoryMetricsSeries.md)
 - [DatadogAPIClient::V1::SLOHistoryMetricsSeriesMetadata](SLOHistoryMetricsSeriesMetadata.md)
 - [DatadogAPIClient::V1::SLOHistoryMetricsSeriesMetadataUnit](SLOHistoryMetricsSeriesMetadataUnit.md)
 - [DatadogAPIClient::V1::SLOHistoryResponse](SLOHistoryResponse.md)
 - [DatadogAPIClient::V1::SLOHistoryResponseData](SLOHistoryResponseData.md)
 - [DatadogAPIClient::V1::SLOHistoryResponseError](SLOHistoryResponseError.md)
 - [DatadogAPIClient::V1::SLOHistorySLIData](SLOHistorySLIData.md)
 - [DatadogAPIClient::V1::SLOListResponse](SLOListResponse.md)
 - [DatadogAPIClient::V1::SLOResponse](SLOResponse.md)
 - [DatadogAPIClient::V1::SLOThreshold](SLOThreshold.md)
 - [DatadogAPIClient::V1::SLOTimeframe](SLOTimeframe.md)
 - [DatadogAPIClient::V1::SLOType](SLOType.md)
 - [DatadogAPIClient::V1::SLOTypeNumeric](SLOTypeNumeric.md)
 - [DatadogAPIClient::V1::SLOWidgetDefinition](SLOWidgetDefinition.md)
 - [DatadogAPIClient::V1::SLOWidgetDefinitionType](SLOWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::ScatterPlotRequest](ScatterPlotRequest.md)
 - [DatadogAPIClient::V1::ScatterPlotWidgetDefinition](ScatterPlotWidgetDefinition.md)
 - [DatadogAPIClient::V1::ScatterPlotWidgetDefinitionRequests](ScatterPlotWidgetDefinitionRequests.md)
 - [DatadogAPIClient::V1::ScatterPlotWidgetDefinitionType](ScatterPlotWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::Series](Series.md)
 - [DatadogAPIClient::V1::ServiceCheck](ServiceCheck.md)
 - [DatadogAPIClient::V1::ServiceCheckStatus](ServiceCheckStatus.md)
 - [DatadogAPIClient::V1::ServiceLevelObjective](ServiceLevelObjective.md)
 - [DatadogAPIClient::V1::ServiceLevelObjectiveQuery](ServiceLevelObjectiveQuery.md)
 - [DatadogAPIClient::V1::ServiceLevelObjectiveRequest](ServiceLevelObjectiveRequest.md)
 - [DatadogAPIClient::V1::ServiceMapWidgetDefinition](ServiceMapWidgetDefinition.md)
 - [DatadogAPIClient::V1::ServiceMapWidgetDefinitionType](ServiceMapWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::ServiceSummaryWidgetDefinition](ServiceSummaryWidgetDefinition.md)
 - [DatadogAPIClient::V1::ServiceSummaryWidgetDefinitionType](ServiceSummaryWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::SlackIntegrationChannel](SlackIntegrationChannel.md)
 - [DatadogAPIClient::V1::SlackIntegrationChannelDisplay](SlackIntegrationChannelDisplay.md)
 - [DatadogAPIClient::V1::SyntheticsAPIStep](SyntheticsAPIStep.md)
 - [DatadogAPIClient::V1::SyntheticsAPIStepSubtype](SyntheticsAPIStepSubtype.md)
 - [DatadogAPIClient::V1::SyntheticsAPITest](SyntheticsAPITest.md)
 - [DatadogAPIClient::V1::SyntheticsAPITestConfig](SyntheticsAPITestConfig.md)
 - [DatadogAPIClient::V1::SyntheticsAPITestResultData](SyntheticsAPITestResultData.md)
 - [DatadogAPIClient::V1::SyntheticsAPITestResultFull](SyntheticsAPITestResultFull.md)
 - [DatadogAPIClient::V1::SyntheticsAPITestResultFullCheck](SyntheticsAPITestResultFullCheck.md)
 - [DatadogAPIClient::V1::SyntheticsAPITestResultShort](SyntheticsAPITestResultShort.md)
 - [DatadogAPIClient::V1::SyntheticsAPITestResultShortResult](SyntheticsAPITestResultShortResult.md)
 - [DatadogAPIClient::V1::SyntheticsAPITestType](SyntheticsAPITestType.md)
 - [DatadogAPIClient::V1::SyntheticsAssertion](SyntheticsAssertion.md)
 - [DatadogAPIClient::V1::SyntheticsAssertionJSONPathOperator](SyntheticsAssertionJSONPathOperator.md)
 - [DatadogAPIClient::V1::SyntheticsAssertionJSONPathTarget](SyntheticsAssertionJSONPathTarget.md)
 - [DatadogAPIClient::V1::SyntheticsAssertionJSONPathTargetTarget](SyntheticsAssertionJSONPathTargetTarget.md)
 - [DatadogAPIClient::V1::SyntheticsAssertionOperator](SyntheticsAssertionOperator.md)
 - [DatadogAPIClient::V1::SyntheticsAssertionTarget](SyntheticsAssertionTarget.md)
 - [DatadogAPIClient::V1::SyntheticsAssertionType](SyntheticsAssertionType.md)
 - [DatadogAPIClient::V1::SyntheticsBasicAuth](SyntheticsBasicAuth.md)
 - [DatadogAPIClient::V1::SyntheticsBrowserError](SyntheticsBrowserError.md)
 - [DatadogAPIClient::V1::SyntheticsBrowserErrorType](SyntheticsBrowserErrorType.md)
 - [DatadogAPIClient::V1::SyntheticsBrowserTest](SyntheticsBrowserTest.md)
 - [DatadogAPIClient::V1::SyntheticsBrowserTestConfig](SyntheticsBrowserTestConfig.md)
 - [DatadogAPIClient::V1::SyntheticsBrowserTestResultData](SyntheticsBrowserTestResultData.md)
 - [DatadogAPIClient::V1::SyntheticsBrowserTestResultFull](SyntheticsBrowserTestResultFull.md)
 - [DatadogAPIClient::V1::SyntheticsBrowserTestResultFullCheck](SyntheticsBrowserTestResultFullCheck.md)
 - [DatadogAPIClient::V1::SyntheticsBrowserTestResultShort](SyntheticsBrowserTestResultShort.md)
 - [DatadogAPIClient::V1::SyntheticsBrowserTestResultShortResult](SyntheticsBrowserTestResultShortResult.md)
 - [DatadogAPIClient::V1::SyntheticsBrowserTestType](SyntheticsBrowserTestType.md)
 - [DatadogAPIClient::V1::SyntheticsBrowserVariable](SyntheticsBrowserVariable.md)
 - [DatadogAPIClient::V1::SyntheticsBrowserVariableType](SyntheticsBrowserVariableType.md)
 - [DatadogAPIClient::V1::SyntheticsCITest](SyntheticsCITest.md)
 - [DatadogAPIClient::V1::SyntheticsCITestBody](SyntheticsCITestBody.md)
 - [DatadogAPIClient::V1::SyntheticsCITestMetadata](SyntheticsCITestMetadata.md)
 - [DatadogAPIClient::V1::SyntheticsCITestMetadataCi](SyntheticsCITestMetadataCi.md)
 - [DatadogAPIClient::V1::SyntheticsCITestMetadataGit](SyntheticsCITestMetadataGit.md)
 - [DatadogAPIClient::V1::SyntheticsCheckType](SyntheticsCheckType.md)
 - [DatadogAPIClient::V1::SyntheticsConfigVariable](SyntheticsConfigVariable.md)
 - [DatadogAPIClient::V1::SyntheticsConfigVariableType](SyntheticsConfigVariableType.md)
 - [DatadogAPIClient::V1::SyntheticsCoreWebVitals](SyntheticsCoreWebVitals.md)
 - [DatadogAPIClient::V1::SyntheticsDeleteTestsPayload](SyntheticsDeleteTestsPayload.md)
 - [DatadogAPIClient::V1::SyntheticsDeleteTestsResponse](SyntheticsDeleteTestsResponse.md)
 - [DatadogAPIClient::V1::SyntheticsDeletedTest](SyntheticsDeletedTest.md)
 - [DatadogAPIClient::V1::SyntheticsDevice](SyntheticsDevice.md)
 - [DatadogAPIClient::V1::SyntheticsDeviceID](SyntheticsDeviceID.md)
 - [DatadogAPIClient::V1::SyntheticsErrorCode](SyntheticsErrorCode.md)
 - [DatadogAPIClient::V1::SyntheticsGetAPITestLatestResultsResponse](SyntheticsGetAPITestLatestResultsResponse.md)
 - [DatadogAPIClient::V1::SyntheticsGetBrowserTestLatestResultsResponse](SyntheticsGetBrowserTestLatestResultsResponse.md)
 - [DatadogAPIClient::V1::SyntheticsGlobalVariable](SyntheticsGlobalVariable.md)
 - [DatadogAPIClient::V1::SyntheticsGlobalVariableParseTestOptions](SyntheticsGlobalVariableParseTestOptions.md)
 - [DatadogAPIClient::V1::SyntheticsGlobalVariableParseTestOptionsType](SyntheticsGlobalVariableParseTestOptionsType.md)
 - [DatadogAPIClient::V1::SyntheticsGlobalVariableParserType](SyntheticsGlobalVariableParserType.md)
 - [DatadogAPIClient::V1::SyntheticsGlobalVariableValue](SyntheticsGlobalVariableValue.md)
 - [DatadogAPIClient::V1::SyntheticsListTestsResponse](SyntheticsListTestsResponse.md)
 - [DatadogAPIClient::V1::SyntheticsLocation](SyntheticsLocation.md)
 - [DatadogAPIClient::V1::SyntheticsLocations](SyntheticsLocations.md)
 - [DatadogAPIClient::V1::SyntheticsParsingOptions](SyntheticsParsingOptions.md)
 - [DatadogAPIClient::V1::SyntheticsPlayingTab](SyntheticsPlayingTab.md)
 - [DatadogAPIClient::V1::SyntheticsPrivateLocation](SyntheticsPrivateLocation.md)
 - [DatadogAPIClient::V1::SyntheticsPrivateLocationCreationResponse](SyntheticsPrivateLocationCreationResponse.md)
 - [DatadogAPIClient::V1::SyntheticsPrivateLocationCreationResponseResultEncryption](SyntheticsPrivateLocationCreationResponseResultEncryption.md)
 - [DatadogAPIClient::V1::SyntheticsPrivateLocationSecrets](SyntheticsPrivateLocationSecrets.md)
 - [DatadogAPIClient::V1::SyntheticsPrivateLocationSecretsAuthentication](SyntheticsPrivateLocationSecretsAuthentication.md)
 - [DatadogAPIClient::V1::SyntheticsPrivateLocationSecretsConfigDecryption](SyntheticsPrivateLocationSecretsConfigDecryption.md)
 - [DatadogAPIClient::V1::SyntheticsSSLCertificate](SyntheticsSSLCertificate.md)
 - [DatadogAPIClient::V1::SyntheticsSSLCertificateIssuer](SyntheticsSSLCertificateIssuer.md)
 - [DatadogAPIClient::V1::SyntheticsSSLCertificateSubject](SyntheticsSSLCertificateSubject.md)
 - [DatadogAPIClient::V1::SyntheticsStep](SyntheticsStep.md)
 - [DatadogAPIClient::V1::SyntheticsStepDetail](SyntheticsStepDetail.md)
 - [DatadogAPIClient::V1::SyntheticsStepDetailWarning](SyntheticsStepDetailWarning.md)
 - [DatadogAPIClient::V1::SyntheticsStepType](SyntheticsStepType.md)
 - [DatadogAPIClient::V1::SyntheticsTestConfig](SyntheticsTestConfig.md)
 - [DatadogAPIClient::V1::SyntheticsTestDetails](SyntheticsTestDetails.md)
 - [DatadogAPIClient::V1::SyntheticsTestDetailsSubType](SyntheticsTestDetailsSubType.md)
 - [DatadogAPIClient::V1::SyntheticsTestDetailsType](SyntheticsTestDetailsType.md)
 - [DatadogAPIClient::V1::SyntheticsTestMonitorStatus](SyntheticsTestMonitorStatus.md)
 - [DatadogAPIClient::V1::SyntheticsTestOptions](SyntheticsTestOptions.md)
 - [DatadogAPIClient::V1::SyntheticsTestOptionsMonitorOptions](SyntheticsTestOptionsMonitorOptions.md)
 - [DatadogAPIClient::V1::SyntheticsTestOptionsRetry](SyntheticsTestOptionsRetry.md)
 - [DatadogAPIClient::V1::SyntheticsTestPauseStatus](SyntheticsTestPauseStatus.md)
 - [DatadogAPIClient::V1::SyntheticsTestProcessStatus](SyntheticsTestProcessStatus.md)
 - [DatadogAPIClient::V1::SyntheticsTestRequest](SyntheticsTestRequest.md)
 - [DatadogAPIClient::V1::SyntheticsTestRequestCertificate](SyntheticsTestRequestCertificate.md)
 - [DatadogAPIClient::V1::SyntheticsTestRequestCertificateItem](SyntheticsTestRequestCertificateItem.md)
 - [DatadogAPIClient::V1::SyntheticsTickInterval](SyntheticsTickInterval.md)
 - [DatadogAPIClient::V1::SyntheticsTiming](SyntheticsTiming.md)
 - [DatadogAPIClient::V1::SyntheticsTriggerCITestLocation](SyntheticsTriggerCITestLocation.md)
 - [DatadogAPIClient::V1::SyntheticsTriggerCITestRunResult](SyntheticsTriggerCITestRunResult.md)
 - [DatadogAPIClient::V1::SyntheticsTriggerCITestsResponse](SyntheticsTriggerCITestsResponse.md)
 - [DatadogAPIClient::V1::SyntheticsUpdateTestPauseStatusPayload](SyntheticsUpdateTestPauseStatusPayload.md)
 - [DatadogAPIClient::V1::SyntheticsVariableParser](SyntheticsVariableParser.md)
 - [DatadogAPIClient::V1::SyntheticsWarningType](SyntheticsWarningType.md)
 - [DatadogAPIClient::V1::TableWidgetCellDisplayMode](TableWidgetCellDisplayMode.md)
 - [DatadogAPIClient::V1::TableWidgetDefinition](TableWidgetDefinition.md)
 - [DatadogAPIClient::V1::TableWidgetDefinitionType](TableWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::TableWidgetHasSearchBar](TableWidgetHasSearchBar.md)
 - [DatadogAPIClient::V1::TableWidgetRequest](TableWidgetRequest.md)
 - [DatadogAPIClient::V1::TagToHosts](TagToHosts.md)
 - [DatadogAPIClient::V1::TargetFormatType](TargetFormatType.md)
 - [DatadogAPIClient::V1::TimeseriesWidgetDefinition](TimeseriesWidgetDefinition.md)
 - [DatadogAPIClient::V1::TimeseriesWidgetDefinitionType](TimeseriesWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::TimeseriesWidgetExpressionAlias](TimeseriesWidgetExpressionAlias.md)
 - [DatadogAPIClient::V1::TimeseriesWidgetLegendColumn](TimeseriesWidgetLegendColumn.md)
 - [DatadogAPIClient::V1::TimeseriesWidgetLegendLayout](TimeseriesWidgetLegendLayout.md)
 - [DatadogAPIClient::V1::TimeseriesWidgetRequest](TimeseriesWidgetRequest.md)
 - [DatadogAPIClient::V1::ToplistWidgetDefinition](ToplistWidgetDefinition.md)
 - [DatadogAPIClient::V1::ToplistWidgetDefinitionType](ToplistWidgetDefinitionType.md)
 - [DatadogAPIClient::V1::ToplistWidgetRequest](ToplistWidgetRequest.md)
 - [DatadogAPIClient::V1::UsageAnalyzedLogsHour](UsageAnalyzedLogsHour.md)
 - [DatadogAPIClient::V1::UsageAnalyzedLogsResponse](UsageAnalyzedLogsResponse.md)
 - [DatadogAPIClient::V1::UsageAttributionAggregatesBody](UsageAttributionAggregatesBody.md)
 - [DatadogAPIClient::V1::UsageAttributionBody](UsageAttributionBody.md)
 - [DatadogAPIClient::V1::UsageAttributionMetadata](UsageAttributionMetadata.md)
 - [DatadogAPIClient::V1::UsageAttributionPagination](UsageAttributionPagination.md)
 - [DatadogAPIClient::V1::UsageAttributionResponse](UsageAttributionResponse.md)
 - [DatadogAPIClient::V1::UsageAttributionSort](UsageAttributionSort.md)
 - [DatadogAPIClient::V1::UsageAttributionValues](UsageAttributionValues.md)
 - [DatadogAPIClient::V1::UsageBillableSummaryBody](UsageBillableSummaryBody.md)
 - [DatadogAPIClient::V1::UsageBillableSummaryHour](UsageBillableSummaryHour.md)
 - [DatadogAPIClient::V1::UsageBillableSummaryKeys](UsageBillableSummaryKeys.md)
 - [DatadogAPIClient::V1::UsageBillableSummaryResponse](UsageBillableSummaryResponse.md)
 - [DatadogAPIClient::V1::UsageComplianceHour](UsageComplianceHour.md)
 - [DatadogAPIClient::V1::UsageComplianceResponse](UsageComplianceResponse.md)
 - [DatadogAPIClient::V1::UsageCustomReportsAttributes](UsageCustomReportsAttributes.md)
 - [DatadogAPIClient::V1::UsageCustomReportsData](UsageCustomReportsData.md)
 - [DatadogAPIClient::V1::UsageCustomReportsMeta](UsageCustomReportsMeta.md)
 - [DatadogAPIClient::V1::UsageCustomReportsPage](UsageCustomReportsPage.md)
 - [DatadogAPIClient::V1::UsageCustomReportsResponse](UsageCustomReportsResponse.md)
 - [DatadogAPIClient::V1::UsageFargateHour](UsageFargateHour.md)
 - [DatadogAPIClient::V1::UsageFargateResponse](UsageFargateResponse.md)
 - [DatadogAPIClient::V1::UsageHostHour](UsageHostHour.md)
 - [DatadogAPIClient::V1::UsageHostsResponse](UsageHostsResponse.md)
 - [DatadogAPIClient::V1::UsageIncidentManagementHour](UsageIncidentManagementHour.md)
 - [DatadogAPIClient::V1::UsageIncidentManagementResponse](UsageIncidentManagementResponse.md)
 - [DatadogAPIClient::V1::UsageIndexedSpansHour](UsageIndexedSpansHour.md)
 - [DatadogAPIClient::V1::UsageIndexedSpansResponse](UsageIndexedSpansResponse.md)
 - [DatadogAPIClient::V1::UsageIngestedSpansHour](UsageIngestedSpansHour.md)
 - [DatadogAPIClient::V1::UsageIngestedSpansResponse](UsageIngestedSpansResponse.md)
 - [DatadogAPIClient::V1::UsageIoTHour](UsageIoTHour.md)
 - [DatadogAPIClient::V1::UsageIoTResponse](UsageIoTResponse.md)
 - [DatadogAPIClient::V1::UsageLambdaHour](UsageLambdaHour.md)
 - [DatadogAPIClient::V1::UsageLambdaResponse](UsageLambdaResponse.md)
 - [DatadogAPIClient::V1::UsageLogsByIndexHour](UsageLogsByIndexHour.md)
 - [DatadogAPIClient::V1::UsageLogsByIndexResponse](UsageLogsByIndexResponse.md)
 - [DatadogAPIClient::V1::UsageLogsHour](UsageLogsHour.md)
 - [DatadogAPIClient::V1::UsageLogsResponse](UsageLogsResponse.md)
 - [DatadogAPIClient::V1::UsageMetricCategory](UsageMetricCategory.md)
 - [DatadogAPIClient::V1::UsageNetworkFlowsHour](UsageNetworkFlowsHour.md)
 - [DatadogAPIClient::V1::UsageNetworkFlowsResponse](UsageNetworkFlowsResponse.md)
 - [DatadogAPIClient::V1::UsageNetworkHostsHour](UsageNetworkHostsHour.md)
 - [DatadogAPIClient::V1::UsageNetworkHostsResponse](UsageNetworkHostsResponse.md)
 - [DatadogAPIClient::V1::UsageProfilingHour](UsageProfilingHour.md)
 - [DatadogAPIClient::V1::UsageProfilingResponse](UsageProfilingResponse.md)
 - [DatadogAPIClient::V1::UsageReportsType](UsageReportsType.md)
 - [DatadogAPIClient::V1::UsageRumSessionsHour](UsageRumSessionsHour.md)
 - [DatadogAPIClient::V1::UsageRumSessionsResponse](UsageRumSessionsResponse.md)
 - [DatadogAPIClient::V1::UsageSNMPHour](UsageSNMPHour.md)
 - [DatadogAPIClient::V1::UsageSNMPResponse](UsageSNMPResponse.md)
 - [DatadogAPIClient::V1::UsageSort](UsageSort.md)
 - [DatadogAPIClient::V1::UsageSortDirection](UsageSortDirection.md)
 - [DatadogAPIClient::V1::UsageSpecifiedCustomReportsAttributes](UsageSpecifiedCustomReportsAttributes.md)
 - [DatadogAPIClient::V1::UsageSpecifiedCustomReportsData](UsageSpecifiedCustomReportsData.md)
 - [DatadogAPIClient::V1::UsageSpecifiedCustomReportsMeta](UsageSpecifiedCustomReportsMeta.md)
 - [DatadogAPIClient::V1::UsageSpecifiedCustomReportsPage](UsageSpecifiedCustomReportsPage.md)
 - [DatadogAPIClient::V1::UsageSpecifiedCustomReportsResponse](UsageSpecifiedCustomReportsResponse.md)
 - [DatadogAPIClient::V1::UsageSummaryDate](UsageSummaryDate.md)
 - [DatadogAPIClient::V1::UsageSummaryDateOrg](UsageSummaryDateOrg.md)
 - [DatadogAPIClient::V1::UsageSummaryResponse](UsageSummaryResponse.md)
 - [DatadogAPIClient::V1::UsageSyntheticsAPIHour](UsageSyntheticsAPIHour.md)
 - [DatadogAPIClient::V1::UsageSyntheticsAPIResponse](UsageSyntheticsAPIResponse.md)
 - [DatadogAPIClient::V1::UsageSyntheticsBrowserHour](UsageSyntheticsBrowserHour.md)
 - [DatadogAPIClient::V1::UsageSyntheticsBrowserResponse](UsageSyntheticsBrowserResponse.md)
 - [DatadogAPIClient::V1::UsageSyntheticsHour](UsageSyntheticsHour.md)
 - [DatadogAPIClient::V1::UsageSyntheticsResponse](UsageSyntheticsResponse.md)
 - [DatadogAPIClient::V1::UsageTimeseriesHour](UsageTimeseriesHour.md)
 - [DatadogAPIClient::V1::UsageTimeseriesResponse](UsageTimeseriesResponse.md)
 - [DatadogAPIClient::V1::UsageTopAvgMetricsHour](UsageTopAvgMetricsHour.md)
 - [DatadogAPIClient::V1::UsageTopAvgMetricsMetadata](UsageTopAvgMetricsMetadata.md)
 - [DatadogAPIClient::V1::UsageTopAvgMetricsResponse](UsageTopAvgMetricsResponse.md)
 - [DatadogAPIClient::V1::UsageTraceHour](UsageTraceHour.md)
 - [DatadogAPIClient::V1::UsageTraceResponse](UsageTraceResponse.md)
 - [DatadogAPIClient::V1::UsageTracingWithoutLimitsHour](UsageTracingWithoutLimitsHour.md)
 - [DatadogAPIClient::V1::UsageTracingWithoutLimitsResponse](UsageTracingWithoutLimitsResponse.md)
 - [DatadogAPIClient::V1::User](User.md)
 - [DatadogAPIClient::V1::UserDisableResponse](UserDisableResponse.md)
 - [DatadogAPIClient::V1::UserListResponse](UserListResponse.md)
 - [DatadogAPIClient::V1::UserResponse](UserResponse.md)
 - [DatadogAPIClient::V1::Widget](Widget.md)
 - [DatadogAPIClient::V1::WidgetAggregator](WidgetAggregator.md)
 - [DatadogAPIClient::V1::WidgetAxis](WidgetAxis.md)
 - [DatadogAPIClient::V1::WidgetChangeType](WidgetChangeType.md)
 - [DatadogAPIClient::V1::WidgetColorPreference](WidgetColorPreference.md)
 - [DatadogAPIClient::V1::WidgetComparator](WidgetComparator.md)
 - [DatadogAPIClient::V1::WidgetCompareTo](WidgetCompareTo.md)
 - [DatadogAPIClient::V1::WidgetConditionalFormat](WidgetConditionalFormat.md)
 - [DatadogAPIClient::V1::WidgetCustomLink](WidgetCustomLink.md)
 - [DatadogAPIClient::V1::WidgetDefinition](WidgetDefinition.md)
 - [DatadogAPIClient::V1::WidgetDisplayType](WidgetDisplayType.md)
 - [DatadogAPIClient::V1::WidgetEvent](WidgetEvent.md)
 - [DatadogAPIClient::V1::WidgetEventSize](WidgetEventSize.md)
 - [DatadogAPIClient::V1::WidgetFieldSort](WidgetFieldSort.md)
 - [DatadogAPIClient::V1::WidgetFormula](WidgetFormula.md)
 - [DatadogAPIClient::V1::WidgetFormulaLimit](WidgetFormulaLimit.md)
 - [DatadogAPIClient::V1::WidgetGrouping](WidgetGrouping.md)
 - [DatadogAPIClient::V1::WidgetImageSizing](WidgetImageSizing.md)
 - [DatadogAPIClient::V1::WidgetLayout](WidgetLayout.md)
 - [DatadogAPIClient::V1::WidgetLayoutType](WidgetLayoutType.md)
 - [DatadogAPIClient::V1::WidgetLineType](WidgetLineType.md)
 - [DatadogAPIClient::V1::WidgetLineWidth](WidgetLineWidth.md)
 - [DatadogAPIClient::V1::WidgetLiveSpan](WidgetLiveSpan.md)
 - [DatadogAPIClient::V1::WidgetMargin](WidgetMargin.md)
 - [DatadogAPIClient::V1::WidgetMarker](WidgetMarker.md)
 - [DatadogAPIClient::V1::WidgetMessageDisplay](WidgetMessageDisplay.md)
 - [DatadogAPIClient::V1::WidgetMonitorSummaryDisplayFormat](WidgetMonitorSummaryDisplayFormat.md)
 - [DatadogAPIClient::V1::WidgetMonitorSummarySort](WidgetMonitorSummarySort.md)
 - [DatadogAPIClient::V1::WidgetNodeType](WidgetNodeType.md)
 - [DatadogAPIClient::V1::WidgetOrderBy](WidgetOrderBy.md)
 - [DatadogAPIClient::V1::WidgetPalette](WidgetPalette.md)
 - [DatadogAPIClient::V1::WidgetRequestStyle](WidgetRequestStyle.md)
 - [DatadogAPIClient::V1::WidgetServiceSummaryDisplayFormat](WidgetServiceSummaryDisplayFormat.md)
 - [DatadogAPIClient::V1::WidgetSizeFormat](WidgetSizeFormat.md)
 - [DatadogAPIClient::V1::WidgetSort](WidgetSort.md)
 - [DatadogAPIClient::V1::WidgetStyle](WidgetStyle.md)
 - [DatadogAPIClient::V1::WidgetSummaryType](WidgetSummaryType.md)
 - [DatadogAPIClient::V1::WidgetTextAlign](WidgetTextAlign.md)
 - [DatadogAPIClient::V1::WidgetTickEdge](WidgetTickEdge.md)
 - [DatadogAPIClient::V1::WidgetTime](WidgetTime.md)
 - [DatadogAPIClient::V1::WidgetTimeWindows](WidgetTimeWindows.md)
 - [DatadogAPIClient::V1::WidgetViewMode](WidgetViewMode.md)
 - [DatadogAPIClient::V1::WidgetVizType](WidgetVizType.md)


## Documentation for Authorization


### apiKeyAuth


- **Type**: API key
- **API key parameter name**: DD-API-KEY
- **Location**: HTTP header

### apiKeyAuthQuery


- **Type**: API key
- **API key parameter name**: api_key
- **Location**: URL query string

### appKeyAuth


- **Type**: API key
- **API key parameter name**: DD-APPLICATION-KEY
- **Location**: HTTP header

### appKeyAuthQuery


- **Type**: API key
- **API key parameter name**: application_key
- **Location**: URL query string

