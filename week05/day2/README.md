# Scenarios

_Note on scenarios: The scenarios are intended to foster discussion about
pros/cons, options, and consequences of each. They are not meant to be solved
as quickly as possible. It's not important that the group get through all of
the scenarios._

For each scenario have the group whiteboard a diagram of the solution. Ensure
that everyone in the group understands the terminology used to describe the
scenario. Then for each of the updates discuss ways that the current
implementation is insufficient and different aproaches for updating the
environment to meet the new requirements.

## Scenario 1

We are creating an application that will host book reviews. Users can sign up
for accounts, store profile data about themselves, post books they’ve read with
a 1-5 rating, a short review, and a long-form review. If they’re the first
reviewer of a book they will be asked to add the book title, author, ISBN,
publication date, the book premise, and if it’s fiction/non-fiction.

_Facilitator note: A likely solution to this scenario is to use a standard
relational data store. Another option would be to use a series of documents in
a document store._

### Update 1

Users are asking to be able to search for books, reviews, and people.

_Facilitator note: A likely solution here would be to send the data to both
the relational store and a new full-text search database. Another option would
be to hook a full-text search engine to the relational store._

### Update 2

As our traffic has increased we’ve noticed that rendering the review pages has
begun to take up significant resources.

_Facilitator note: A likely solution would be to cache rendered pages using the
URL as the key. This could be done using a key/value store such as Redis. Redis
allows us to expire stored data and updating review pages on an interval
instead of live (eventual consistency) is fine for this case._

## Scenario 2

We are creating an application that helps people create and find disc golf
tournaments. Users will post the event date/time, organizer name, organizer
contact info, the event city/state, the name of the park, and pictures and/or
logo. From that info we will create a home page for their event. People must be
able to search for events by any field.

_Facilitator note: A document store and/or full-text search database are good
candidates. ElasticSearch specifically fits both needs._

### Update 1

People want to search for events by geographic proximity.

_Facilitator note: Most database engines support some type of geospatial
querying. ElasticSearch has one that is very fast. PostgreSQL’s PostGIS is
widely considered the gold standard for number of features._

### Update 2

We would like to start suggesting events to people proactively by email.

_Facilitator note: There a lots of solutions to this, but a graph database
could be used to identify kinds of players, relationships between players,
score their willingness to drive farther, etc._
