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
  # A distribution points metric to submit to Datadog.
  class DistributionPointsSeries
    include DatadogAPIClient::BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The name of the host that produced the distribution point metric.
    attr_accessor :host

    # The name of the distribution points metric.
    attr_accessor :metric

    # Points relating to the distribution point metric. All points must be tuples with timestamp and a list of values (cannot be a string). Timestamps should be in POSIX time in seconds.
    attr_accessor :points

    # A list of tags associated with the distribution point metric.
    attr_accessor :tags

    # The type of the distribution point.
    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'host' => :'host',
        :'metric' => :'metric',
        :'points' => :'points',
        :'tags' => :'tags',
        :'type' => :'type'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'host' => :'String',
        :'metric' => :'String',
        :'points' => :'Array<Array<DistributionPointItem>>',
        :'tags' => :'Array<String>',
        :'type' => :'DistributionPointsType'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::DistributionPointsSeries` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::DistributionPointsSeries`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'host')
        self.host = attributes[:'host']
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
      else
        self.type = 'distribution'
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

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          host == o.host &&
          metric == o.metric &&
          points == o.points &&
          tags == o.tags &&
          type == o.type
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [host, metric, points, tags, type].hash
    end
  end
end
