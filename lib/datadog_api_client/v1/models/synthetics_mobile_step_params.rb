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
  # The parameters of a mobile step.
  class SyntheticsMobileStepParams
    include BaseGenericModel

    # Type of assertion to apply in an API test.
    attr_accessor :check

    # Number of milliseconds to wait between inputs in a `typeText` step type.
    attr_reader :delay

    # The direction of the scroll for a `scrollToElement` step type.
    attr_accessor :direction

    # Information about the element used for a step.
    attr_accessor :element

    # Boolean to change the state of the wifi for a `toggleWiFi` step type.
    attr_accessor :enable

    # Maximum number of scrolls to do for a `scrollToElement` step type.
    attr_accessor :max_scrolls

    # List of positions for the `flick` step type. The maximum is 10 flicks per step
    attr_accessor :positions

    # Public ID of the test to be played as part of a `playSubTest` step type.
    attr_accessor :subtest_public_id

    # Values used in the step. Used in multiple step types.
    attr_accessor :value

    # Variable object for `extractVariable` step type.
    attr_accessor :variable

    # Boolean to indicate if `Enter` should be pressed at the end of the `typeText` step type.
    attr_accessor :with_enter

    # Amount to scroll by on the `x` axis for a `scroll` step type.
    attr_accessor :x

    # Amount to scroll by on the `y` axis for a `scroll` step type.
    attr_accessor :y

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'check' => :'check',
        :'delay' => :'delay',
        :'direction' => :'direction',
        :'element' => :'element',
        :'enable' => :'enable',
        :'max_scrolls' => :'maxScrolls',
        :'positions' => :'positions',
        :'subtest_public_id' => :'subtestPublicId',
        :'value' => :'value',
        :'variable' => :'variable',
        :'with_enter' => :'withEnter',
        :'x' => :'x',
        :'y' => :'y'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'check' => :'SyntheticsCheckType',
        :'delay' => :'Integer',
        :'direction' => :'SyntheticsMobileStepParamsDirection',
        :'element' => :'SyntheticsMobileStepParamsElement',
        :'enable' => :'Boolean',
        :'max_scrolls' => :'Integer',
        :'positions' => :'Array<SyntheticsMobileStepParamsPositionsItems>',
        :'subtest_public_id' => :'String',
        :'value' => :'String',
        :'variable' => :'SyntheticsMobileStepParamsVariable',
        :'with_enter' => :'Boolean',
        :'x' => :'Integer',
        :'y' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsMobileStepParams` initialize method"
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

      if attributes.key?(:'check')
        self.check = attributes[:'check']
      end

      if attributes.key?(:'delay')
        self.delay = attributes[:'delay']
      end

      if attributes.key?(:'direction')
        self.direction = attributes[:'direction']
      end

      if attributes.key?(:'element')
        self.element = attributes[:'element']
      end

      if attributes.key?(:'enable')
        self.enable = attributes[:'enable']
      end

      if attributes.key?(:'max_scrolls')
        self.max_scrolls = attributes[:'max_scrolls']
      end

      if attributes.key?(:'positions')
        if (value = attributes[:'positions']).is_a?(Array)
          self.positions = value
        end
      end

      if attributes.key?(:'subtest_public_id')
        self.subtest_public_id = attributes[:'subtest_public_id']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.key?(:'variable')
        self.variable = attributes[:'variable']
      end

      if attributes.key?(:'with_enter')
        self.with_enter = attributes[:'with_enter']
      end

      if attributes.key?(:'x')
        self.x = attributes[:'x']
      end

      if attributes.key?(:'y')
        self.y = attributes[:'y']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@delay.nil? && @delay > 5000
      return false if !@delay.nil? && @delay < 0
      true
    end

    # Custom attribute writer method with validation
    # @param delay [Object] Object to be assigned
    # @!visibility private
    def delay=(delay)
      if !delay.nil? && delay > 5000
        fail ArgumentError, 'invalid value for "delay", must be smaller than or equal to 5000.'
      end
      if !delay.nil? && delay < 0
        fail ArgumentError, 'invalid value for "delay", must be greater than or equal to 0.'
      end
      @delay = delay
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
          check == o.check &&
          delay == o.delay &&
          direction == o.direction &&
          element == o.element &&
          enable == o.enable &&
          max_scrolls == o.max_scrolls &&
          positions == o.positions &&
          subtest_public_id == o.subtest_public_id &&
          value == o.value &&
          variable == o.variable &&
          with_enter == o.with_enter &&
          x == o.x &&
          y == o.y
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [check, delay, direction, element, enable, max_scrolls, positions, subtest_public_id, value, variable, with_enter, x, y].hash
    end
  end
end