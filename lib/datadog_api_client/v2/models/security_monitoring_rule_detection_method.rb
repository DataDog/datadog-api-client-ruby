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
  # The detection method.
  class SecurityMonitoringRuleDetectionMethod
    include BaseEnumModel

    THRESHOLD = "threshold".freeze
    NEW_VALUE = "new_value".freeze
    ANOMALY_DETECTION = "anomaly_detection".freeze
    IMPOSSIBLE_TRAVEL = "impossible_travel".freeze
  end
end
