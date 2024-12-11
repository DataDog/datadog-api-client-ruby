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
  # The incident's attributes for a create request.
  class IncidentCreateAttributes
    include BaseGenericModel

    # Required if `customer_impacted:"true"`. A summary of the impact customers experienced during the incident.
    attr_accessor :customer_impact_scope

    # A flag indicating whether the incident caused customer impact.
    attr_reader :customer_impacted

    # A condensed view of the user-defined fields for which to create initial selections.
    attr_accessor :fields

    # A unique identifier that represents an incident type. The default incident type will be used if this property is not provided.
    attr_accessor :incident_type_uuid

    # An array of initial timeline cells to be placed at the beginning of the incident timeline.
    attr_accessor :initial_cells

    # Notification handles that will be notified of the incident at creation.
    attr_accessor :notification_handles

    # The title of the incident, which summarizes what happened.
    attr_reader :title

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'customer_impact_scope' => :'customer_impact_scope',
        :'customer_impacted' => :'customer_impacted',
        :'fields' => :'fields',
        :'incident_type_uuid' => :'incident_type_uuid',
        :'initial_cells' => :'initial_cells',
        :'notification_handles' => :'notification_handles',
        :'title' => :'title'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'customer_impact_scope' => :'String',
        :'customer_impacted' => :'Boolean',
        :'fields' => :'Hash<String, IncidentFieldAttributes>',
        :'incident_type_uuid' => :'String',
        :'initial_cells' => :'Array<IncidentTimelineCellCreateAttributes>',
        :'notification_handles' => :'Array<IncidentNotificationHandle>',
        :'title' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::IncidentCreateAttributes` initialize method"
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

      if attributes.key?(:'customer_impact_scope')
        self.customer_impact_scope = attributes[:'customer_impact_scope']
      end

      if attributes.key?(:'customer_impacted')
        self.customer_impacted = attributes[:'customer_impacted']
      end

      if attributes.key?(:'fields')
        self.fields = attributes[:'fields']
      end

      if attributes.key?(:'incident_type_uuid')
        self.incident_type_uuid = attributes[:'incident_type_uuid']
      end

      if attributes.key?(:'initial_cells')
        if (value = attributes[:'initial_cells']).is_a?(Array)
          self.initial_cells = value
        end
      end

      if attributes.key?(:'notification_handles')
        if (value = attributes[:'notification_handles']).is_a?(Array)
          self.notification_handles = value
        end
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @customer_impacted.nil?
      return false if @title.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param customer_impacted [Object] Object to be assigned
    # @!visibility private
    def customer_impacted=(customer_impacted)
      if customer_impacted.nil?
        fail ArgumentError, 'invalid value for "customer_impacted", customer_impacted cannot be nil.'
      end
      @customer_impacted = customer_impacted
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
          customer_impact_scope == o.customer_impact_scope &&
          customer_impacted == o.customer_impacted &&
          fields == o.fields &&
          incident_type_uuid == o.incident_type_uuid &&
          initial_cells == o.initial_cells &&
          notification_handles == o.notification_handles &&
          title == o.title &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [customer_impact_scope, customer_impacted, fields, incident_type_uuid, initial_cells, notification_handles, title, additional_properties].hash
    end
  end
end
