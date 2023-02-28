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
  # The incident's attributes from a response.
  class IncidentResponseAttributes
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Timestamp when the incident was created.
    attr_accessor :created

    # Length of the incident's customer impact in seconds.
    # Equals the difference between `customer_impact_start` and `customer_impact_end`.
    attr_accessor :customer_impact_duration

    # Timestamp when customers were no longer impacted by the incident.
    attr_accessor :customer_impact_end

    # A summary of the impact customers experienced during the incident.
    attr_accessor :customer_impact_scope

    # Timestamp when customers began being impacted by the incident.
    attr_accessor :customer_impact_start

    # A flag indicating whether the incident caused customer impact.
    attr_accessor :customer_impacted

    # Timestamp when the incident was detected.
    attr_accessor :detected

    # A condensed view of the user-defined fields attached to incidents.
    attr_accessor :fields

    # Timestamp when the incident was last modified.
    attr_accessor :modified

    # Notification handles that will be notified of the incident during update.
    attr_accessor :notification_handles

    # The monotonically increasing integer ID for the incident.
    attr_accessor :public_id

    # Timestamp when the incident's state was last changed from active or stable to resolved or completed.
    attr_accessor :resolved

    # The amount of time in seconds to detect the incident.
    # Equals the difference between `customer_impact_start` and `detected`.
    attr_accessor :time_to_detect

    # The amount of time in seconds to call incident after detection. Equals the difference of `detected` and `created`.
    attr_accessor :time_to_internal_response

    # The amount of time in seconds to resolve customer impact after detecting the issue. Equals the difference between `customer_impact_end` and `detected`.
    attr_accessor :time_to_repair

    # The amount of time in seconds to resolve the incident after it was created. Equals the difference between `created` and `resolved`.
    attr_accessor :time_to_resolve

    # The title of the incident, which summarizes what happened.
    attr_reader :title

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'created' => :'created',
        :'customer_impact_duration' => :'customer_impact_duration',
        :'customer_impact_end' => :'customer_impact_end',
        :'customer_impact_scope' => :'customer_impact_scope',
        :'customer_impact_start' => :'customer_impact_start',
        :'customer_impacted' => :'customer_impacted',
        :'detected' => :'detected',
        :'fields' => :'fields',
        :'modified' => :'modified',
        :'notification_handles' => :'notification_handles',
        :'public_id' => :'public_id',
        :'resolved' => :'resolved',
        :'time_to_detect' => :'time_to_detect',
        :'time_to_internal_response' => :'time_to_internal_response',
        :'time_to_repair' => :'time_to_repair',
        :'time_to_resolve' => :'time_to_resolve',
        :'title' => :'title'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'created' => :'Time',
        :'customer_impact_duration' => :'Integer',
        :'customer_impact_end' => :'Time',
        :'customer_impact_scope' => :'String',
        :'customer_impact_start' => :'Time',
        :'customer_impacted' => :'Boolean',
        :'detected' => :'Time',
        :'fields' => :'Hash<String, IncidentFieldAttributes>',
        :'modified' => :'Time',
        :'notification_handles' => :'Array<IncidentNotificationHandle>',
        :'public_id' => :'Integer',
        :'resolved' => :'Time',
        :'time_to_detect' => :'Integer',
        :'time_to_internal_response' => :'Integer',
        :'time_to_repair' => :'Integer',
        :'time_to_resolve' => :'Integer',
        :'title' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'customer_impact_end',
        :'customer_impact_scope',
        :'customer_impact_start',
        :'detected',
        :'notification_handles',
        :'resolved',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::IncidentResponseAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::IncidentResponseAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'customer_impact_duration')
        self.customer_impact_duration = attributes[:'customer_impact_duration']
      end

      if attributes.key?(:'customer_impact_end')
        self.customer_impact_end = attributes[:'customer_impact_end']
      end

      if attributes.key?(:'customer_impact_scope')
        self.customer_impact_scope = attributes[:'customer_impact_scope']
      end

      if attributes.key?(:'customer_impact_start')
        self.customer_impact_start = attributes[:'customer_impact_start']
      end

      if attributes.key?(:'customer_impacted')
        self.customer_impacted = attributes[:'customer_impacted']
      end

      if attributes.key?(:'detected')
        self.detected = attributes[:'detected']
      end

      if attributes.key?(:'fields')
        self.fields = attributes[:'fields']
      end

      if attributes.key?(:'modified')
        self.modified = attributes[:'modified']
      end

      if attributes.key?(:'notification_handles')
        if (value = attributes[:'notification_handles']).is_a?(Array)
          self.notification_handles = value
        end
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end

      if attributes.key?(:'resolved')
        self.resolved = attributes[:'resolved']
      end

      if attributes.key?(:'time_to_detect')
        self.time_to_detect = attributes[:'time_to_detect']
      end

      if attributes.key?(:'time_to_internal_response')
        self.time_to_internal_response = attributes[:'time_to_internal_response']
      end

      if attributes.key?(:'time_to_repair')
        self.time_to_repair = attributes[:'time_to_repair']
      end

      if attributes.key?(:'time_to_resolve')
        self.time_to_resolve = attributes[:'time_to_resolve']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @title.nil?
      true
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
          created == o.created &&
          customer_impact_duration == o.customer_impact_duration &&
          customer_impact_end == o.customer_impact_end &&
          customer_impact_scope == o.customer_impact_scope &&
          customer_impact_start == o.customer_impact_start &&
          customer_impacted == o.customer_impacted &&
          detected == o.detected &&
          fields == o.fields &&
          modified == o.modified &&
          notification_handles == o.notification_handles &&
          public_id == o.public_id &&
          resolved == o.resolved &&
          time_to_detect == o.time_to_detect &&
          time_to_internal_response == o.time_to_internal_response &&
          time_to_repair == o.time_to_repair &&
          time_to_resolve == o.time_to_resolve &&
          title == o.title
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:created, :customer_impact_duration, :customer_impact_end, :customer_impact_scope, :customer_impact_start, :customer_impacted, :detected, :fields, :modified, :notification_handles, :public_id, :resolved, :time_to_detect, :time_to_internal_response, :time_to_repair, :time_to_resolve, :title].hash
    end
  end
end
