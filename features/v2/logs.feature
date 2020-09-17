@endpoint(logs)
Feature: Logs
  Search your logs in the Datadog platform over HTTP.  [See API version
  1](/api/v1/logs/) for sending logs.

  Background:
    Given a valid "apiKeyAuth" key in the system
    And a valid "appKeyAuth" key in the system
    And an instance of "Logs" API

  @generated
  Scenario: Get a quick list of logs returns "OK" response
    Given new "ListLogsGet" request
    And request contains "filter[query]" parameter with value "datadog-agent"
    And request contains "filter[index]" parameter with value "main"
    And request contains "filter[from]" parameter with value "2020-09-17T11:48:36+00:01"
    And request contains "filter[to]" parameter with value "2020-09-17T12:48:36+00:01"
    And request contains "page[limit]" parameter with value 5
    When the request is sent
    Then the response status is 200 OK

  @generated
  Scenario: Get a list of logs returns "OK" response
    Given new "ListLogs" request
    And body {"filter": {"query": "datadog-agent", "indexes": ["main"], "from": "2020-09-17T11:48:36+00:01", "to": "2020-09-17T12:48:36+00:01"}, "sort": "timestamp", "page": {"limit": 5}}
    When the request is sent
    Then the response status is 200 OK

  @generated @skip
  Scenario: Aggregate events returns "OK" response
    Given operation "AggregateLogs" enabled
    And new "AggregateLogs" request
    And body {}
    When the request is sent
    Then the response status is 200 OK
