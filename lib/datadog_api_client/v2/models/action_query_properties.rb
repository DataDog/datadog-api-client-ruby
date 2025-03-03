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
  # The properties of the action query.
  class ActionQueryProperties
    include BaseGenericModel

    # Whether to run this query. If specified, the query will only run if this condition evaluates to `true` in JavaScript and all other conditions are also met.
    attr_accessor :condition

    # The minimum time in milliseconds that must pass before the query can be triggered again. This is useful for preventing accidental double-clicks from triggering the query multiple times.
    attr_accessor :debounce_in_ms

    # The mocked outputs of the action query. This is useful for testing the app without actually running the action.
    attr_accessor :mocked_outputs

    # Determines when this query is executed. If set to `false`, the query will run when the app loads and whenever any query arguments change. If set to `true`, the query will only run when manually triggered from elsewhere in the app.
    attr_accessor :only_trigger_manually

    # The post-query transformation function, which is a JavaScript function that changes the query's `.outputs` property after the query's execution.
    attr_accessor :outputs

    # If specified, the app will poll the query at the specified interval in milliseconds. The minimum polling interval is 15 seconds. The query will only poll when the app's browser tab is active.
    attr_accessor :polling_interval_in_ms

    # Whether to prompt the user to confirm this query before it runs.
    attr_accessor :requires_confirmation

    # Whether to display a toast to the user when the query returns an error.
    attr_accessor :show_toast_on_error

    # The definition of the action query.
    attr_reader :spec

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'condition' => :'condition',
        :'debounce_in_ms' => :'debounceInMs',
        :'mocked_outputs' => :'mockedOutputs',
        :'only_trigger_manually' => :'onlyTriggerManually',
        :'outputs' => :'outputs',
        :'polling_interval_in_ms' => :'pollingIntervalInMs',
        :'requires_confirmation' => :'requiresConfirmation',
        :'show_toast_on_error' => :'showToastOnError',
        :'spec' => :'spec'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'condition' => :'ActionQueryCondition',
        :'debounce_in_ms' => :'ActionQueryDebounceInMs',
        :'mocked_outputs' => :'ActionQueryMockedOutputs',
        :'only_trigger_manually' => :'ActionQueryOnlyTriggerManually',
        :'outputs' => :'String',
        :'polling_interval_in_ms' => :'ActionQueryPollingIntervalInMs',
        :'requires_confirmation' => :'ActionQueryRequiresConfirmation',
        :'show_toast_on_error' => :'ActionQueryShowToastOnError',
        :'spec' => :'ActionQuerySpec'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ActionQueryProperties` initialize method"
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

      if attributes.key?(:'condition')
        self.condition = attributes[:'condition']
      end

      if attributes.key?(:'debounce_in_ms')
        self.debounce_in_ms = attributes[:'debounce_in_ms']
      end

      if attributes.key?(:'mocked_outputs')
        self.mocked_outputs = attributes[:'mocked_outputs']
      end

      if attributes.key?(:'only_trigger_manually')
        self.only_trigger_manually = attributes[:'only_trigger_manually']
      end

      if attributes.key?(:'outputs')
        self.outputs = attributes[:'outputs']
      end

      if attributes.key?(:'polling_interval_in_ms')
        self.polling_interval_in_ms = attributes[:'polling_interval_in_ms']
      end

      if attributes.key?(:'requires_confirmation')
        self.requires_confirmation = attributes[:'requires_confirmation']
      end

      if attributes.key?(:'show_toast_on_error')
        self.show_toast_on_error = attributes[:'show_toast_on_error']
      end

      if attributes.key?(:'spec')
        self.spec = attributes[:'spec']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @spec.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param spec [Object] Object to be assigned
    # @!visibility private
    def spec=(spec)
      if spec.nil?
        fail ArgumentError, 'invalid value for "spec", spec cannot be nil.'
      end
      @spec = spec
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
          condition == o.condition &&
          debounce_in_ms == o.debounce_in_ms &&
          mocked_outputs == o.mocked_outputs &&
          only_trigger_manually == o.only_trigger_manually &&
          outputs == o.outputs &&
          polling_interval_in_ms == o.polling_interval_in_ms &&
          requires_confirmation == o.requires_confirmation &&
          show_toast_on_error == o.show_toast_on_error &&
          spec == o.spec &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [condition, debounce_in_ms, mocked_outputs, only_trigger_manually, outputs, polling_interval_in_ms, requires_confirmation, show_toast_on_error, spec, additional_properties].hash
    end
  end
end
