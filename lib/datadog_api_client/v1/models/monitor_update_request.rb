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
  # Object describing a monitor update request.
  class MonitorUpdateRequest
    include BaseGenericModel

    # Timestamp of the monitor creation.
    attr_accessor :created

    # Object describing the creator of the shared element.
    attr_accessor :creator

    # Whether or not the monitor is deleted. (Always `null`)
    attr_accessor :deleted

    # ID of this monitor.
    attr_accessor :id

    # A message to include with notifications for this monitor.
    attr_accessor :message

    # Last timestamp when the monitor was edited.
    attr_accessor :modified

    # Whether or not the monitor is broken down on different groups.
    attr_accessor :multi

    # The monitor name.
    attr_accessor :name

    # List of options associated with your monitor.
    attr_accessor :options

    # The different states your monitor can be in.
    attr_accessor :overall_state

    # Integer from 1 (high) to 5 (low) indicating alert severity.
    attr_accessor :priority

    # The monitor query.
    attr_accessor :query

    # A list of unique role identifiers to define which roles are allowed to edit the monitor. The unique identifiers for all roles can be pulled from the [Roles API](https://docs.datadoghq.com/api/latest/roles/#list-roles) and are located in the `data.id` field. Editing a monitor includes any updates to the monitor configuration, monitor deletion, and muting of the monitor for any amount of time. `restricted_roles` is the successor of `locked`. For more information about `locked` and `restricted_roles`, see the [monitor options docs](https://docs.datadoghq.com/monitors/guide/monitor_api_options/#permissions-options).
    attr_accessor :restricted_roles

    # Wrapper object with the different monitor states.
    attr_accessor :state

    # Tags associated to your monitor.
    attr_accessor :tags

    # The type of the monitor. For more information about `type`, see the [monitor options](https://docs.datadoghq.com/monitors/guide/monitor_api_options/) docs.
    attr_accessor :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'created' => :'created',
        :'creator' => :'creator',
        :'deleted' => :'deleted',
        :'id' => :'id',
        :'message' => :'message',
        :'modified' => :'modified',
        :'multi' => :'multi',
        :'name' => :'name',
        :'options' => :'options',
        :'overall_state' => :'overall_state',
        :'priority' => :'priority',
        :'query' => :'query',
        :'restricted_roles' => :'restricted_roles',
        :'state' => :'state',
        :'tags' => :'tags',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'created' => :'Time',
        :'creator' => :'Creator',
        :'deleted' => :'Time',
        :'id' => :'Integer',
        :'message' => :'String',
        :'modified' => :'Time',
        :'multi' => :'Boolean',
        :'name' => :'String',
        :'options' => :'MonitorOptions',
        :'overall_state' => :'MonitorOverallStates',
        :'priority' => :'Integer',
        :'query' => :'String',
        :'restricted_roles' => :'Array<String>',
        :'state' => :'MonitorState',
        :'tags' => :'Array<String>',
        :'type' => :'MonitorType'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'deleted',
        :'priority',
        :'restricted_roles',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::MonitorUpdateRequest` initialize method"
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

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'creator')
        self.creator = attributes[:'creator']
      end

      if attributes.key?(:'deleted')
        self.deleted = attributes[:'deleted']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'modified')
        self.modified = attributes[:'modified']
      end

      if attributes.key?(:'multi')
        self.multi = attributes[:'multi']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.key?(:'overall_state')
        self.overall_state = attributes[:'overall_state']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'restricted_roles')
        if (value = attributes[:'restricted_roles']).is_a?(Array)
          self.restricted_roles = value
        end
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
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

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created == o.created &&
          creator == o.creator &&
          deleted == o.deleted &&
          id == o.id &&
          message == o.message &&
          modified == o.modified &&
          multi == o.multi &&
          name == o.name &&
          options == o.options &&
          overall_state == o.overall_state &&
          priority == o.priority &&
          query == o.query &&
          restricted_roles == o.restricted_roles &&
          state == o.state &&
          tags == o.tags &&
          type == o.type
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [created, creator, deleted, id, message, modified, multi, name, options, overall_state, priority, query, restricted_roles, state, tags, type].hash
    end
  end
end
