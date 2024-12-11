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
  # Object containing all metric names returned and their associated metadata.
  class MetricsQueryMetadata
    include BaseGenericModel

    # Aggregation type.
    attr_accessor :aggr

    # Display name of the metric.
    attr_accessor :display_name

    # End of the time window, milliseconds since Unix epoch.
    attr_accessor :_end

    # Metric expression.
    attr_accessor :expression

    # Number of milliseconds between data samples.
    attr_accessor :interval

    # Number of data samples.
    attr_accessor :length

    # Metric name.
    attr_accessor :metric

    # List of points of the timeseries in milliseconds.
    attr_accessor :pointlist

    # The index of the series' query within the request.
    attr_accessor :query_index

    # Metric scope, comma separated list of tags.
    attr_accessor :scope

    # Start of the time window, milliseconds since Unix epoch.
    attr_accessor :start

    # Unique tags identifying this series.
    attr_accessor :tag_set

    # Detailed information about the metric unit.
    # The first element describes the "primary unit" (for example, `bytes` in `bytes per second`).
    # The second element describes the "per unit" (for example, `second` in `bytes per second`).
    # If the second element is not present, the API returns null.
    attr_reader :unit

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aggr' => :'aggr',
        :'display_name' => :'display_name',
        :'_end' => :'end',
        :'expression' => :'expression',
        :'interval' => :'interval',
        :'length' => :'length',
        :'metric' => :'metric',
        :'pointlist' => :'pointlist',
        :'query_index' => :'query_index',
        :'scope' => :'scope',
        :'start' => :'start',
        :'tag_set' => :'tag_set',
        :'unit' => :'unit'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'aggr' => :'String',
        :'display_name' => :'String',
        :'_end' => :'Integer',
        :'expression' => :'String',
        :'interval' => :'Integer',
        :'length' => :'Integer',
        :'metric' => :'String',
        :'pointlist' => :'Array<Array<Float>>',
        :'query_index' => :'Integer',
        :'scope' => :'String',
        :'start' => :'Integer',
        :'tag_set' => :'Array<String>',
        :'unit' => :'Array<MetricsQueryUnit>'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'aggr',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::MetricsQueryMetadata` initialize method"
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

      if attributes.key?(:'aggr')
        self.aggr = attributes[:'aggr']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'_end')
        self._end = attributes[:'_end']
      end

      if attributes.key?(:'expression')
        self.expression = attributes[:'expression']
      end

      if attributes.key?(:'interval')
        self.interval = attributes[:'interval']
      end

      if attributes.key?(:'length')
        self.length = attributes[:'length']
      end

      if attributes.key?(:'metric')
        self.metric = attributes[:'metric']
      end

      if attributes.key?(:'pointlist')
        if (value = attributes[:'pointlist']).is_a?(Array)
          self.pointlist = value
        end
      end

      if attributes.key?(:'query_index')
        self.query_index = attributes[:'query_index']
      end

      if attributes.key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.key?(:'tag_set')
        if (value = attributes[:'tag_set']).is_a?(Array)
          self.tag_set = value
        end
      end

      if attributes.key?(:'unit')
        if (value = attributes[:'unit']).is_a?(Array)
          self.unit = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@unit.nil? && @unit.length > 2
      return false if !@unit.nil? && @unit.length < 2
      true
    end

    # Custom attribute writer method with validation
    # @param unit [Object] Object to be assigned
    # @!visibility private
    def unit=(unit)
      if !unit.nil? && unit.length > 2
        fail ArgumentError, 'invalid value for "unit", number of items must be less than or equal to 2.'
      end
      if !unit.nil? && unit.length < 2
        fail ArgumentError, 'invalid value for "unit", number of items must be greater than or equal to 2.'
      end
      @unit = unit
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
          aggr == o.aggr &&
          display_name == o.display_name &&
          _end == o._end &&
          expression == o.expression &&
          interval == o.interval &&
          length == o.length &&
          metric == o.metric &&
          pointlist == o.pointlist &&
          query_index == o.query_index &&
          scope == o.scope &&
          start == o.start &&
          tag_set == o.tag_set &&
          unit == o.unit &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [aggr, display_name, _end, expression, interval, length, metric, pointlist, query_index, scope, start, tag_set, unit, additional_properties].hash
    end
  end
end
