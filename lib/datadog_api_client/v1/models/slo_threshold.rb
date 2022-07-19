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
  # SLO thresholds (target and optionally warning) for a single time window.
  class SLOThreshold
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The target value for the service level indicator within the corresponding
    # timeframe.
    attr_accessor :target

    # A string representation of the target that indicates its precision.
    # It uses trailing zeros to show significant decimal places (for example `98.00`).
    #
    # Always included in service level objective responses. Ignored in
    # create/update requests.
    attr_accessor :target_display

    # The SLO time window options.
    attr_accessor :timeframe

    # The warning value for the service level objective.
    attr_accessor :warning

    # A string representation of the warning target (see the description of
    # the `target_display` field for details).
    #
    # Included in service level objective responses if a warning target exists.
    # Ignored in create/update requests.
    attr_accessor :warning_display

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'target' => :'target',
        :'target_display' => :'target_display',
        :'timeframe' => :'timeframe',
        :'warning' => :'warning',
        :'warning_display' => :'warning_display'
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
        :'target' => :'Float',
        :'target_display' => :'String',
        :'timeframe' => :'SLOTimeframe',
        :'warning' => :'Float',
        :'warning_display' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SLOThreshold` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SLOThreshold`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'target')
        self.target = attributes[:'target']
      end

      if attributes.key?(:'target_display')
        self.target_display = attributes[:'target_display']
      end

      if attributes.key?(:'timeframe')
        self.timeframe = attributes[:'timeframe']
      end

      if attributes.key?(:'warning')
        self.warning = attributes[:'warning']
      end

      if attributes.key?(:'warning_display')
        self.warning_display = attributes[:'warning_display']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @target.nil?
      return false if @timeframe.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param target [Object] Object to be assigned
    # @!visibility private
    def target=(target)
      if target.nil?
        fail ArgumentError, 'invalid value for "target", target cannot be nil.'
      end
      @target = target
    end

    # Custom attribute writer method with validation
    # @param timeframe [Object] Object to be assigned
    # @!visibility private
    def timeframe=(timeframe)
      if timeframe.nil?
        fail ArgumentError, 'invalid value for "timeframe", timeframe cannot be nil.'
      end
      @timeframe = timeframe
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          target == o.target &&
          target_display == o.target_display &&
          timeframe == o.timeframe &&
          warning == o.warning &&
          warning_display == o.warning_display
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
      [target, target_display, timeframe, warning, warning_display].hash
    end
  end
end
