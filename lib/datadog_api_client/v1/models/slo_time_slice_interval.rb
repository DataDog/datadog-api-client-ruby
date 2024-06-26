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
  # The interval used when querying data, which defines the size of a time slice.
  # Two values are allowed: 60 (1 minute) and 300 (5 minutes).
  # If not provided, the value defaults to 300 (5 minutes).
  class SLOTimeSliceInterval
    include BaseEnumModel

    ONE_MINUTE = 60.freeze
    FIVE_MINUTES = 300.freeze
  end
end
