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
  # Object representing an event.
  class EventCreateRequest
    include DatadogAPIClient::BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # An arbitrary string to use for aggregation. Limited to 100 characters.
    # If you specify a key, all events using that key are grouped together in the Event Stream.
    attr_accessor :aggregation_key

    # If an alert event is enabled, set its type.
    # For example, `error`, `warning`, `info`, `success`, `user_update`,
    # `recommendation`, and `snapshot`.
    attr_accessor :alert_type

    # POSIX timestamp of the event. Must be sent as an integer (that is no quotes).
    # Limited to events no older than 18 hours
    attr_accessor :date_happened

    # A device name.
    attr_accessor :device_name

    # Host name to associate with the event.
    # Any tags associated with the host are also applied to this event.
    attr_accessor :host

    # The priority of the event. For example, `normal` or `low`.
    attr_accessor :priority

    # ID of the parent event. Must be sent as an integer (that is no quotes).
    attr_accessor :related_event_id

    # The type of event being posted. Option examples include nagios, hudson, jenkins, my_apps, chef, puppet, git, bitbucket, etc.
    # A complete list of source attribute values [available here](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value).
    attr_accessor :source_type_name

    # A list of tags to apply to the event.
    attr_accessor :tags

    # The body of the event. Limited to 4000 characters. The text supports markdown.
    # To use markdown in the event text, start the text block with `%%% \n` and end the text block with `\n %%%`.
    # Use `msg_text` with the Datadog Ruby library.
    attr_accessor :text

    # The event title.
    attr_accessor :title

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aggregation_key' => :'aggregation_key',
        :'alert_type' => :'alert_type',
        :'date_happened' => :'date_happened',
        :'device_name' => :'device_name',
        :'host' => :'host',
        :'priority' => :'priority',
        :'related_event_id' => :'related_event_id',
        :'source_type_name' => :'source_type_name',
        :'tags' => :'tags',
        :'text' => :'text',
        :'title' => :'title'
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
        :'aggregation_key' => :'String',
        :'alert_type' => :'EventAlertType',
        :'date_happened' => :'Integer',
        :'device_name' => :'String',
        :'host' => :'String',
        :'priority' => :'EventPriority',
        :'related_event_id' => :'Integer',
        :'source_type_name' => :'String',
        :'tags' => :'Array<String>',
        :'text' => :'String',
        :'title' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'priority',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::EventCreateRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::EventCreateRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'aggregation_key')
        self.aggregation_key = attributes[:'aggregation_key']
      end

      if attributes.key?(:'alert_type')
        self.alert_type = attributes[:'alert_type']
      end

      if attributes.key?(:'date_happened')
        self.date_happened = attributes[:'date_happened']
      end

      if attributes.key?(:'device_name')
        self.device_name = attributes[:'device_name']
      end

      if attributes.key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'related_event_id')
        self.related_event_id = attributes[:'related_event_id']
      end

      if attributes.key?(:'source_type_name')
        self.source_type_name = attributes[:'source_type_name']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@aggregation_key.nil? && @aggregation_key.to_s.length > 100
      return false if @text.nil?
      return false if @text.to_s.length > 4000
      return false if @title.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param aggregation_key [Object] Object to be assigned
    # @!visibility private
    def aggregation_key=(aggregation_key)
      if !aggregation_key.nil? && aggregation_key.to_s.length > 100
        fail ArgumentError, 'invalid value for "aggregation_key", the character length must be smaller than or equal to 100.'
      end
      @aggregation_key = aggregation_key
    end

    # Custom attribute writer method with validation
    # @param text [Object] Object to be assigned
    # @!visibility private
    def text=(text)
      if text.nil?
        fail ArgumentError, 'invalid value for "text", text cannot be nil.'
      end
      if text.to_s.length > 4000
        fail ArgumentError, 'invalid value for "text", the character length must be smaller than or equal to 4000.'
      end
      @text = text
    end

    # Custom attribute writer method with validation
    # @param title [Object] Object to be assigned
    # @!visibility private
    def title=(title)
      if title.nil?
        fail ArgumentError, 'invalid value for "title", title cannot be nil.'
      end
      @title = title
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aggregation_key == o.aggregation_key &&
          alert_type == o.alert_type &&
          date_happened == o.date_happened &&
          device_name == o.device_name &&
          host == o.host &&
          priority == o.priority &&
          related_event_id == o.related_event_id &&
          source_type_name == o.source_type_name &&
          tags == o.tags &&
          text == o.text &&
          title == o.title
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
      [aggregation_key, alert_type, date_happened, device_name, host, priority, related_event_id, source_type_name, tags, text, title].hash
    end
  end
end
