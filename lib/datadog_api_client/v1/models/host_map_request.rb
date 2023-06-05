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
  # Updated host map.
  class HostMapRequest
    include BaseGenericModel

    # The log query.
    attr_accessor :apm_query

    # The log query.
    attr_accessor :event_query

    # The log query.
    attr_accessor :log_query

    # The log query.
    attr_accessor :network_query

    # The process query to use in the widget.
    attr_accessor :process_query

    # The log query.
    attr_accessor :profile_metrics_query

    # Query definition.
    attr_accessor :q

    # The log query.
    attr_accessor :rum_query

    # The log query.
    attr_accessor :security_query

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'apm_query' => :'apm_query',
        :'event_query' => :'event_query',
        :'log_query' => :'log_query',
        :'network_query' => :'network_query',
        :'process_query' => :'process_query',
        :'profile_metrics_query' => :'profile_metrics_query',
        :'q' => :'q',
        :'rum_query' => :'rum_query',
        :'security_query' => :'security_query'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'apm_query' => :'LogQueryDefinition',
        :'event_query' => :'LogQueryDefinition',
        :'log_query' => :'LogQueryDefinition',
        :'network_query' => :'LogQueryDefinition',
        :'process_query' => :'ProcessQueryDefinition',
        :'profile_metrics_query' => :'LogQueryDefinition',
        :'q' => :'String',
        :'rum_query' => :'LogQueryDefinition',
        :'security_query' => :'LogQueryDefinition'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::HostMapRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::HostMapRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'apm_query')
        self.apm_query = attributes[:'apm_query']
      end

      if attributes.key?(:'event_query')
        self.event_query = attributes[:'event_query']
      end

      if attributes.key?(:'log_query')
        self.log_query = attributes[:'log_query']
      end

      if attributes.key?(:'network_query')
        self.network_query = attributes[:'network_query']
      end

      if attributes.key?(:'process_query')
        self.process_query = attributes[:'process_query']
      end

      if attributes.key?(:'profile_metrics_query')
        self.profile_metrics_query = attributes[:'profile_metrics_query']
      end

      if attributes.key?(:'q')
        self.q = attributes[:'q']
      end

      if attributes.key?(:'rum_query')
        self.rum_query = attributes[:'rum_query']
      end

      if attributes.key?(:'security_query')
        self.security_query = attributes[:'security_query']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          apm_query == o.apm_query &&
          event_query == o.event_query &&
          log_query == o.log_query &&
          network_query == o.network_query &&
          process_query == o.process_query &&
          profile_metrics_query == o.profile_metrics_query &&
          q == o.q &&
          rum_query == o.rum_query &&
          security_query == o.security_query
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [apm_query, event_query, log_query, network_query, process_query, profile_metrics_query, q, rum_query, security_query].hash
    end
  end
end
