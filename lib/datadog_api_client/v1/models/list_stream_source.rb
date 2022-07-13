=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # Source from which to query items to display in the stream.
  class ListStreamSource
    include DatadogAPIClient::BaseEnumModel

    LOGS_STREAM = "logs_stream".freeze
    AUDIT_STREAM = "audit_stream".freeze
    RUM_ISSUE_STREAM = "rum_issue_stream".freeze
    APM_ISSUE_STREAM = "apm_issue_stream".freeze
  end
end
