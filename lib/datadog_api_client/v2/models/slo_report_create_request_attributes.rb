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
  # The attributes portion of the SLO report request.
  class SloReportCreateRequestAttributes
    include BaseGenericModel

    # The `from` timestamp for the report in epoch seconds.
    attr_reader :from_ts

    # The frequency at which report data is to be generated.
    attr_accessor :interval

    # The query string used to filter SLO results. Some examples of queries include `service:<service-name>` and `slo-name`.
    attr_reader :query

    # The timezone used to determine the start and end of each interval. For example, weekly intervals start at 12am on Sunday in the specified timezone.
    attr_accessor :timezone

    # The `to` timestamp for the report in epoch seconds.
    attr_reader :to_ts

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'from_ts' => :'from_ts',
        :'interval' => :'interval',
        :'query' => :'query',
        :'timezone' => :'timezone',
        :'to_ts' => :'to_ts'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'from_ts' => :'Integer',
        :'interval' => :'SLOReportInterval',
        :'query' => :'String',
        :'timezone' => :'String',
        :'to_ts' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SloReportCreateRequestAttributes` initialize method"
      end

      self.additional_properties = {}
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          self.additional_properties[k.to_sym] = v
        else
          h[k.to_sym] = v
        end
      }

      if attributes.key?(:'from_ts')
        self.from_ts = attributes[:'from_ts']
      end

      if attributes.key?(:'interval')
        self.interval = attributes[:'interval']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.key?(:'to_ts')
        self.to_ts = attributes[:'to_ts']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @from_ts.nil?
      return false if @query.nil?
      return false if @to_ts.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param from_ts [Object] Object to be assigned
    # @!visibility private
    def from_ts=(from_ts)
      if from_ts.nil?
        fail ArgumentError, 'invalid value for "from_ts", from_ts cannot be nil.'
      end
      @from_ts = from_ts
    end

    # Custom attribute writer method with validation
    # @param query [Object] Object to be assigned
    # @!visibility private
    def query=(query)
      if query.nil?
        fail ArgumentError, 'invalid value for "query", query cannot be nil.'
      end
      @query = query
    end

    # Custom attribute writer method with validation
    # @param to_ts [Object] Object to be assigned
    # @!visibility private
    def to_ts=(to_ts)
      if to_ts.nil?
        fail ArgumentError, 'invalid value for "to_ts", to_ts cannot be nil.'
      end
      @to_ts = to_ts
    end

    # Returns the object in the form of hash, with additionalProperties support.
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      self.additional_properties.each_pair do |attr, value|
        hash[attr] = value
      end
      hash
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          from_ts == o.from_ts &&
          interval == o.interval &&
          query == o.query &&
          timezone == o.timezone &&
          to_ts == o.to_ts &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [from_ts, interval, query, timezone, to_ts, additional_properties].hash
    end
  end
end
