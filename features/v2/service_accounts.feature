@endpoint(service-accounts) @endpoint(service-accounts-v2)
Feature: Service Accounts
  Create, edit, and disable service accounts.

  Background:
    Given a valid "apiKeyAuth" key in the system
    And a valid "appKeyAuth" key in the system
    And an instance of "ServiceAccounts" API

  @generated @skip
  Scenario: Create a service account returns "Bad Request" response
    Given new "CreateServiceAccount" request
    And body with value {"data": {"data": {"attributes": {"email": "jane.doe@example.com", "name": null, "title": null}, "relationships": {"roles": {"data": [{"id": "3653d3c6-0c75-11ea-ad28-fb5701eabc7d", "type": "roles"}]}}, "type": "users"}}}
    When the request is sent
    Then the response status is 400 Bad Request

  Scenario: Create a service account returns "OK" response
    Given new "CreateServiceAccount" request
    And there is a valid "role" in the system
    And body with value {"data": {"type": "users", "attributes": {"name": "{{ unique }}", "email": "{{ unique }}@datadoghq.com"}, "relationships": {"roles": {"data": [{"id": "{{ unique }}", "type": "roles"}]}}}}
    When the request is sent
    Then the response status is 201 OK
    And the response "data.attributes.email" is equal to "{{ unique_lower }}@datadoghq.com"
    And the response "data.attributes.name" is equal to "{{ unique }}"
    And the response "data.attributes.disabled" is false
    And the response "data.attributes.service_account" is true
    And the response "data.relationships.roles[0].id" is equal to "{{ role.data.id }}"

  @generated @skip
  Scenario: Create an app key for this service account returns "Bad Request" response
    Given new "CreateServiceAccountApplicationKey" request
    And request contains "service_account_id" parameter from "<PATH>"
    And body with value {"data": {"attributes": {"name": "Application Key for submitting metrics"}, "type": "application_keys"}}
    When the request is sent
    Then the response status is 400 Bad Request

  @integration-only
  Scenario: Create an app key for this service account returns "Created" response
    Given there is a valid "service_account_user" in the system
    And new "CreateServiceAccountApplicationKey" request
    And request contains "service_account_id" parameter from "service_account_user.data.id"
    And body with value {"data": {"attributes": {"name": "{{ unique }}"}, "type": "application_keys"}}
    When the request is sent
    Then the response status is 201 Created
    And the response "data.attributes.name" is equal to "{{ unique }}"
    And the response "data.relationships.owner.data.id" has the same value as "service_account_user.data.id"

  @integration-only
  Scenario: Delete an app key owned by this service account returns "No Content" response
    Given there is a valid "service_account_user" in the system
    And there is a valid "service_account_application_key" in the system
    And new "DeleteServiceAccountApplicationKey" request
    And request contains "service_account_id" parameter from "service_account_user.data.id"
    And request contains "app_key_id" parameter from "application_key.data.id"
    When the request is sent
    Then the response status is 204 No Content

  @generated @skip
  Scenario: Delete an app key owned by this service account returns "Not Found" response
    Given new "DeleteServiceAccountApplicationKey" request
    And request contains "service_account_id" parameter from "<PATH>"
    And request contains "app_key_id" parameter from "<PATH>"
    When the request is sent
    Then the response status is 404 Not Found

  @generated @skip
  Scenario: Edit an app key owned by this service account returns "Bad Request" response
    Given new "UpdateServiceAccountApplicationKey" request
    And request contains "service_account_id" parameter from "<PATH>"
    And request contains "app_key_id" parameter from "<PATH>"
    And body with value {"data": {"attributes": {"name": "Application Key for submitting metrics"}, "id": "00112233-4455-6677-8899-aabbccddeeff", "type": "application_keys"}}
    When the request is sent
    Then the response status is 400 Bad Request

  @generated @skip
  Scenario: Edit an app key owned by this service account returns "Not Found" response
    Given new "UpdateServiceAccountApplicationKey" request
    And request contains "service_account_id" parameter from "<PATH>"
    And request contains "app_key_id" parameter from "<PATH>"
    And body with value {"data": {"attributes": {"name": "Application Key for submitting metrics"}, "id": "00112233-4455-6677-8899-aabbccddeeff", "type": "application_keys"}}
    When the request is sent
    Then the response status is 404 Not Found

  @integration-only
  Scenario: Edit an app key owned by this service account returns "OK" response
    Given there is a valid "service_account_user" in the system
    And there is a valid "service_account_application_key" in the system
    And new "UpdateServiceAccountApplicationKey" request
    And request contains "service_account_id" parameter from "service_account_user.data.id"
    And request contains "app_key_id" parameter from "application_key.data.id"
    And body with value {"data": {"id": "{{ application_key.data.id }}", "type": "application_keys", "attributes": {"name" : "{{ application_key.data.attributes.name }}-updated"}}}
    When the request is sent
    Then the response status is 200 OK
    And the response "data.attributes.name" is equal to "{{ application_key.data.attributes.name }}-updated"

  @generated @skip
  Scenario: Get all app keys owned by this service account returns "Bad Request" response
    Given new "ListServiceAccountApplicationKeys" request
    And request contains "service_account_id" parameter from "<PATH>"
    When the request is sent
    Then the response status is 400 Bad Request

  @generated @skip
  Scenario: Get all app keys owned by this service account returns "Not Found" response
    Given new "ListServiceAccountApplicationKeys" request
    And request contains "service_account_id" parameter from "<PATH>"
    When the request is sent
    Then the response status is 404 Not Found

  @integration-only
  Scenario: Get all app keys owned by this service account returns "OK" response
    Given there is a valid "service_account_user" in the system
    And new "ListServiceAccountApplicationKeys" request
    And request contains "service_account_id" parameter from "service_account_user.data.id"
    When the request is sent
    Then the response status is 200 OK

  @generated @skip
  Scenario: Get one app key owned by this service account returns "Not Found" response
    Given new "GetServiceAccountApplicationKey" request
    And request contains "service_account_id" parameter from "<PATH>"
    And request contains "app_key_id" parameter from "<PATH>"
    When the request is sent
    Then the response status is 404 Not Found

  @integration-only
  Scenario: Get one app key owned by this service account returns "OK" response
    Given there is a valid "service_account_user" in the system
    And there is a valid "service_account_application_key" in the system
    And new "GetServiceAccountApplicationKey" request
    And request contains "service_account_id" parameter from "service_account_user.data.id"
    And request contains "app_key_id" parameter from "application_key.data.id"
    When the request is sent
    Then the response status is 200 OK
    And the response "data.attributes.name" has the same value as "application_key.data.attributes.name"
