# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Project.destroy_all
Task.destroy_all
Log.destroy_all
Milestone.destroy_all

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
  start_date: Date.parse('25-05-2017'),
  end_date: Date.parse('20-06-2017'),
  duration: 26,
  image: "http://fillmurray.com/350/350",
  user_id: u1.id
  })

p2 = Project.create!({
  title: "test",
  start_date: Time.now,
  end_date: Date.parse('14-06-2017'),
  duration: 6,
  image: "http://fillmurray.com/350/350",
  user_id: u2.id
  })

p3 = Project.create!({
  title: "Testing the date stuff",
  start_date: Date.parse('01-06-2017'),
  end_date: Date.parse('16-06-2017'),
  duration: 15,
  image: "http://fillmurray.com/350/350",
  user_id: u1.id
  })


t1 = Task.create!({
  description: "back-end",
  start_day: 1,
  due_day: 3,
  completed: false,
  blocked: false,
  color: "EF6F6C",
  project_id: p1.id
})
t2 = Task.create!({
  description: "task day 5",
  start_day: 2,
  due_day: 5,
  completed: false,
  blocked: false,
  color: "0074D9",
  project_id: p1.id
})
t3 = Task.create!({
  description: "task day 6",
  start_day: 4,
  due_day: 6,
  completed: false,
  blocked: false,
  color: "b10dc9",
  project_id: p1.id
})
t4 = Task.create!({
  description: "task day 3",
  start_day: 1,
  due_day: 3,
  completed: false,
  blocked: false,
  color: "AAAAAA",
  project_id: p1.id
  })
t5 = Task.create!({
  description: "task day 23",
  start_day: 3,
  due_day: 23,
  completed: false,
  blocked: false,
  color: "AAAAAA",
  project_id: p1.id
  })
t6 = Task.create!({
  description: "task day 22",
  start_day: 3,
  due_day: 22,
  completed: false,
  blocked: false,
  color: "AAAAAA",
  project_id: p1.id
  })

m1 = p1.milestones.create!({
  title: "mstone day 7",
  day: 7,
  completed: false
  })
m2 = p1.milestones.create!({
  title: "mstone day 3",
  day: 3,
  completed: false
  })
m3 = p1.milestones.create!({
  title: "mstone day 10",
  day: 10,
  completed: false
  })

# m1.tasks << p1.tasks
t1.users << [u1, u2]
t2.users << [u2, u3]
t3.users << [u1, u2, u3]
t4.users << [u1, u3]
# p1.users << [u1, u2]
u1.projects << [p1,p3]
