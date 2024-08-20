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
  class Event
    include BaseGenericModel

    # If an alert event is enabled, set its type.
    # For example, `error`, `warning`, `info`, `success`, `user_update`,
    # `recommendation`, and `snapshot`.
    attr_accessor :alert_type

    # POSIX timestamp of the event. Must be sent as an integer (that is no quotes).
    # Limited to events up to 18 hours in the past and two hours in the future.
    attr_accessor :date_happened

    # A device name.
    attr_accessor :device_name

    # Host name to associate with the event.
    # Any tags associated with the host are also applied to this event.
    attr_accessor :host

    # Integer ID of the event.
    attr_accessor :id

    # Handling IDs as large 64-bit numbers can cause loss of accuracy issues with some programming languages.
    # Instead, use the string representation of the Event ID to avoid losing accuracy.
    attr_accessor :id_str

    # Payload of the event.
    attr_accessor :payload

    # The priority of the event. For example, `normal` or `low`.
    attr_accessor :priority

    # The type of event being posted. Option examples include nagios, hudson, jenkins, my_apps, chef, puppet, git, bitbucket, etc.
    # The list of standard source attribute values [available here](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value).
    attr_accessor :source_type_name

    # A list of tags to apply to the event.
    attr_accessor :tags

    # The body of the event. Limited to 4000 characters. The text supports markdown.
    # To use markdown in the event text, start the text block with `%%% \n` and end the text block with `\n %%%`.
    # Use `msg_text` with the Datadog Ruby library.
    attr_reader :text

    # The event title.
    attr_accessor :title

    # URL of the event.
    attr_accessor :url

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'alert_type' => :'alert_type',
        :'date_happened' => :'date_happened',
        :'device_name' => :'device_name',
        :'host' => :'host',
        :'id' => :'id',
        :'id_str' => :'id_str',
        :'payload' => :'payload',
        :'priority' => :'priority',
        :'source_type_name' => :'source_type_name',
        :'tags' => :'tags',
        :'text' => :'text',
        :'title' => :'title',
        :'url' => :'url'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'alert_type' => :'EventAlertType',
        :'date_happened' => :'Integer',
        :'device_name' => :'String',
        :'host' => :'String',
        :'id' => :'Integer',
        :'id_str' => :'String',
        :'payload' => :'String',
        :'priority' => :'EventPriority',
        :'source_type_name' => :'String',
        :'tags' => :'Array<String>',
        :'text' => :'String',
        :'title' => :'String',
        :'url' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::Event` initialize method"
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

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'id_str')
        self.id_str = attributes[:'id_str']
      end

      if attributes.key?(:'payload')
        self.payload = attributes[:'payload']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
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

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@text.nil? && @text.to_s.length > 4000
      true
    end

    # Custom attribute writer method with validation
    # @param text [Object] Object to be assigned
    # @!visibility private
    def text=(text)
      if !text.nil? && text.to_s.length > 4000
        fail ArgumentError, 'invalid value for "text", the character length must be smaller than or equal to 4000.'
      end
      @text = text
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          alert_type == o.alert_type &&
          date_happened == o.date_happened &&
          device_name == o.device_name &&
          host == o.host &&
          id == o.id &&
          id_str == o.id_str &&
          payload == o.payload &&
          priority == o.priority &&
          source_type_name == o.source_type_name &&
          tags == o.tags &&
          text == o.text &&
          title == o.title &&
          url == o.url
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [alert_type, date_happened, device_name, host, id, id_str, payload, priority, source_type_name, tags, text, title, url].hash
    end
  end
end
