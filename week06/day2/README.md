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

## Problem statement

Discuss the following scenarios, identifying solutions and discussing their
merits.

## Goal

Gain a deeper understanding of the Gitflow branching model.

## Scenarios

* We are creating a new application. What branches do we need to create?
  * The two long lived branches, master and develop.
* The client has asked for a new feature, named ‘A’. What should we do?
  * Create a feature branch.
* The client has asked for another new feature, named ‘B’.
  * Create a second feature branch.
* We have completed feature B.
  * Test the feature B branch, then merge the feature branch back into develop.
* The client is asking for a release with just feature B.
  * Create a release branch named release-1.0 from the feature B commit on the
    develop branch, then test the release branch.
* Feature A is completed, but fails QA.” Add new commit(s) to feature branch A
  to fix the issue.
* Feature A is complete and passes QA.
  * Merge feature branch A into develop.
* QA okays the release branch.
  * Merge the release branch into master, then tag the commit in master.
* The client is asking for feature A.
  * Create a release branch named release-2.0 from develop.
* We identify a production bug in 1.0.
  * Create a hotfix branch named hotfix-bugnumber off of the tagged commit in
    master. Once QA has approved it merge to both develop and master, tagging
    the commit in master as 1.0.1. The release-2.0 branch should also get this
    hotfix, possibly via a cherry-pick commit.

...invent more scenarios as time allows.
