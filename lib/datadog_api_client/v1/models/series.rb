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
  # A metric to submit to Datadog.
  # See [Datadog metrics](https://docs.datadoghq.com/developers/metrics/#custom-metrics-properties).
  class Series
    include BaseGenericModel

    # The name of the host that produced the metric.
    attr_accessor :host

    # If the type of the metric is rate or count, define the corresponding interval in seconds.
    attr_accessor :interval

    # The name of the timeseries.
    attr_reader :metric

    # Points relating to a metric. All points must be tuples with timestamp and a scalar value (cannot be a string). Timestamps should be in POSIX time in seconds, and cannot be more than ten minutes in the future or more than one hour in the past.
    attr_reader :points

    # A list of tags associated with the metric.
    attr_accessor :tags

    # The type of the metric. Valid types are "",`count`, `gauge`, and `rate`.
    attr_accessor :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'host' => :'host',
        :'interval' => :'interval',
        :'metric' => :'metric',
        :'points' => :'points',
        :'tags' => :'tags',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'host' => :'String',
        :'interval' => :'Integer',
        :'metric' => :'String',
        :'points' => :'Array<Array<Float>>',
        :'tags' => :'Array<String>',
        :'type' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'interval',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::Series` initialize method"
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

      if attributes.key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.key?(:'interval')
        self.interval = attributes[:'interval']
      end

      if attributes.key?(:'metric')
        self.metric = attributes[:'metric']
      end

      if attributes.key?(:'points')
        if (value = attributes[:'points']).is_a?(Array)
          self.points = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @metric.nil?
      return false if @points.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param metric [Object] Object to be assigned
    # @!visibility private
    def metric=(metric)
      if metric.nil?
        fail ArgumentError, 'invalid value for "metric", metric cannot be nil.'
      end
      @metric = metric
    end

    # Custom attribute writer method with validation
    # @param points [Object] Object to be assigned
    # @!visibility private
    def points=(points)
      if points.nil?
        fail ArgumentError, 'invalid value for "points", points cannot be nil.'
      end
      @points = points
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
          host == o.host &&
          interval == o.interval &&
          metric == o.metric &&
          points == o.points &&
          tags == o.tags &&
          type == o.type
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [host, interval, metric, points, tags, type].hash
    end
  end
end
