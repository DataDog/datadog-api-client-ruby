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
  # Aggregation methods for metric queries.
  class MonitorFormulaAndFunctionCostAggregator
    include BaseEnumModel

    AVG = "avg".freeze
    SUM = "sum".freeze
    MAX = "max".freeze
    MIN = "min".freeze
    LAST = "last".freeze
    AREA = "area".freeze
    L2NORM = "l2norm".freeze
    PERCENTILE = "percentile".freeze
    STDDEV = "stddev".freeze
  end
end
