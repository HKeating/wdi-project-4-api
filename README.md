# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



### NOTES

Models:

- User
  - username
  - email
  - image
  - password_digest

  - has_many :projects

- Project
  - title
  - start date
  - duration
  - image

  - belongs_to :user
  - has_many :users
  - has_many :tasks

- Task
  - title
  - description
  - due day

  - has_many :users
