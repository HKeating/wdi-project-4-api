# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Project.destroy_all

u1 = User.create!({
  username: "horace",
  image: "http://fillmurray.com/200/200",
  email: "horace@horace.com",
  password: "password",
  password_confirmation: "password"
  })

u2 = User.create!({
  username: "max",
  image: "http://fillmurray.com/200/200",
  email: "max@max.com",
  password: "password",
  password_confirmation: "password"
  })

u3 = User.create!({
  username: "harry",
  image: "http://fillmurray.com/200/200",
  email: "harry@harry.com",
  password: "password",
  password_confirmation: "password"
  })

p1 = Project.create!({
  title: "wdi-project-4",
  start_date: Time.now,
  duration: 12,
  image: "http://fillmurray.com/350/350",
  user_id: u1.id
  })

p2 = Project.create!({
  title: "test",
  start_date: Time.now,
  duration: 6,
  image: "http://fillmurray.com/350/350",
  user_id: u2.id
  })


t1 = Task.create!({
  description: "back-end",
  start_day: 1,
  due_day: 3,
  completed: false,
  project_id: p1.id
})
t2 = Task.create!({
  description: "front-end",
  start_day: 2,
  due_day: 5,
  completed: false,
  project_id: p1.id
})
t3 = Task.create!({
  description: "do stuff",
  start_day: 4,
  due_day: 6,
  completed: false,
  project_id: p1.id
})

m1 = p1.milestones.create!({
  title: "Hit MVP",
  day: 7,
  completed: false
  })

m1.tasks << p1.tasks
t1.users << [u1, u2]
t2.users << [u2, u3]
t3.users << [u1, u2, u3]



  # t.text "description"
  # t.integer "start_day"
  # t.integer "due_day"
  # t.bigint "user_id"
  # t.bigint "project_id"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
  # t.boolean "completed"
