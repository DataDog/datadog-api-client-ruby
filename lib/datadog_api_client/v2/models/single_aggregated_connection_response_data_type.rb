=begin
#Datadog API V2 Collection

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

module DatadogAPIClient::V2
  # Aggregated connection resource type. Allowed enum values: `aggregated_connection`.
  # default: `aggregated_connection`
  class SingleAggregatedConnectionResponseDataType
    include BaseEnumModel

    AGGREGATED_CONNECTION = "aggregated_connection".freeze
  end
end
