# DatadogAPIClient::V2::IncidentsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;IncidentResponseData&gt;**](IncidentResponseData.md) | An array of incidents. |  |
| **included** | [**Array&lt;IncidentResponseIncludedItem&gt;**](IncidentResponseIncludedItem.md) | Included related resources that the user requested. | [optional][readonly] |
| **meta** | [**IncidentServicesResponseMeta**](IncidentServicesResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentsResponse.new(
  data: [{&quot;attributes&quot;:{&quot;created&quot;:&quot;2020-04-21T15:34:08.627205+00:00&quot;,&quot;creation_idempotency_key&quot;:null,&quot;customer_impact_duration&quot;:0,&quot;customer_impact_end&quot;:null,&quot;customer_impact_scope&quot;:null,&quot;customer_impact_start&quot;:null,&quot;customer_impacted&quot;:false,&quot;detected&quot;:&quot;2020-04-14T00:00:00+00:00&quot;,&quot;modified&quot;:&quot;2020-09-17T14:16:58.696424+00:00&quot;,&quot;postmortem_id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;public_id&quot;:1,&quot;resolved&quot;:null,&quot;severity&quot;:&quot;SEV-1&quot;,&quot;time_to_detect&quot;:0,&quot;time_to_internal_response&quot;:0,&quot;time_to_repair&quot;:0,&quot;time_to_resolve&quot;:0,&quot;title&quot;:&quot;Example Incident&quot;},&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;relationships&quot;:{&quot;commander_user&quot;:{&quot;data&quot;:{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;users&quot;}},&quot;created_by_user&quot;:{&quot;data&quot;:{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;users&quot;}},&quot;integrations&quot;:{&quot;data&quot;:[{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;incident_integrations&quot;},{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;incident_integrations&quot;}]},&quot;last_modified_by_user&quot;:{&quot;data&quot;:{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;users&quot;}},&quot;postmortem&quot;:{&quot;data&quot;:{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;incident_postmortems&quot;}}},&quot;type&quot;:&quot;incidents&quot;},{&quot;attributes&quot;:{&quot;created&quot;:&quot;2020-04-21T15:34:08.627205+00:00&quot;,&quot;creation_idempotency_key&quot;:null,&quot;customer_impact_duration&quot;:0,&quot;customer_impact_end&quot;:null,&quot;customer_impact_scope&quot;:null,&quot;customer_impact_start&quot;:null,&quot;customer_impacted&quot;:false,&quot;detected&quot;:&quot;2020-04-14T00:00:00+00:00&quot;,&quot;modified&quot;:&quot;2020-09-17T14:16:58.696424+00:00&quot;,&quot;postmortem_id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;public_id&quot;:2,&quot;resolved&quot;:null,&quot;severity&quot;:&quot;SEV-5&quot;,&quot;time_to_detect&quot;:0,&quot;time_to_internal_response&quot;:0,&quot;time_to_repair&quot;:0,&quot;time_to_resolve&quot;:0,&quot;title&quot;:&quot;Example Incident 2&quot;},&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;relationships&quot;:{&quot;commander_user&quot;:{&quot;data&quot;:{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;users&quot;}},&quot;created_by_user&quot;:{&quot;data&quot;:{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;users&quot;}},&quot;integrations&quot;:{&quot;data&quot;:[{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;incident_integrations&quot;},{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;incident_integrations&quot;}]},&quot;last_modified_by_user&quot;:{&quot;data&quot;:{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;users&quot;}},&quot;postmortem&quot;:{&quot;data&quot;:{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;incident_postmortems&quot;}}},&quot;type&quot;:&quot;incidents&quot;}],
  included: null,
  meta: null
)
```

