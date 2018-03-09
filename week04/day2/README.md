# Scenarios

_Note on scenarios: The scenarios are intended to foster discussion about
pros/cons, options, and consequences of each. They are not meant to be solved
as quickly as possible. It's not important that the group get through all of
the scenarios._

For each scenario have the group whiteboard a diagram of the solution. Ensure
that everyone in the group understands the terminology used to describe the
scenario. Then for each of the updates discuss ways that the current
implementation is insufficient and different approaches for updating the
environment to meet the new requirements.

## Scenario 1

We support an application with 1GB of read-only data. The application is a
search engine for this data. At peak we currently support 10 requests/second
and respond to 90% of requests in 430ms. Our contractual SLA is to serve 90% of
requests in 500ms or less. Over the last three years we’ve averaged 3 9’s of
uptime.  Current hosting: Single server running our Rails app and a copy of
PostgreSQL. 

### Update 1 

The client’s contract is up and they are requesting we improve reliability to 5
9’s. 

### Update 2 

The client is expecting their load to double. 

## Scenario 2 

We support an application that is a data sharing service. Customers can upload
a binary and provide their partners with links to download that binary. We are
not an archival service; If we lose data it’s not an issue. Our data center is
in LA, CA.  Current hosting: One server per client. 

### Update 1 

The business is concerned with the rising costs and onboarding time associated
with purchasing hardware per customer. They would like us to make better use of
the existing hardware and be able to onboard customers immediately. 

### Update 2 

The business signs a client in Ireland. Their partners are all in the EU and
are complaining about download speeds.
