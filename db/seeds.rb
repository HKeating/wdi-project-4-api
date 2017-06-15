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
  image: "https://scontent.xx.fbcdn.net/v/t1.0-1/p320x320/10432989_10153638017387575_814915425786401046_n.jpg?oh=dbfadd3a80acc32402ae8811699a4e59&oe=59D5B1FE",
  email: "horace@horace.com",
  password: "password",
  password_confirmation: "password"
  })

u2 = User.create!({
  username: "max",
  image: "https://scontent.xx.fbcdn.net/v/t1.0-9/1619120_1026528287403836_8573424129763549103_n.jpg?oh=de923f2dd862803f5f13fa5c48fc8924&oe=59A54E52",
  email: "max@max.com",
  password: "password",
  password_confirmation: "password"
  })

u3 = User.create!({
  username: "harry",
  image: "images/harry.png",
  email: "harry@harry.com",
  password: "password",
  password_confirmation: "password"
  })

u4 = User.create!({
    username: "alex",
    image: "https://avatars0.githubusercontent.com/u/40461?v=3&s=400",
    email: "alex@alex.com",
    password: "password",
    password_confirmation: "password"
    })
u5 = User.create!({
    username: "lourenco",
    image: "http://helppestcontrol.com/wp-content/uploads/2014/05/Pest-Control.gif",
    email: "lourenco@lourenco.com",
    password: "password",
    password_confirmation: "password"
    })
u4 = User.create!({
    username: "rane",
    image: "http://cdn.images.express.co.uk/img/dynamic/67/590x/Giroud-641236.jpg",
    email: "rane@rane.com",
    password: "password",
    password_confirmation: "password"
    })

p1 = Project.create!({
  title: "Flappy Sausage",
  start_date: Date.parse('25-05-2017'),
  end_date: Date.parse('20-06-2017'),
  duration: 26,
  image: "images/flappy_sausage.png",
  user_id: u1.id
  })

p2 = Project.create!({
  title: "Carrot Cake",
  start_date: Time.now,
  end_date: Date.parse('14-06-2017'),
  duration: 6,
  image: "http://www.cookingclassy.com/wp-content/uploads/2012/01/carrot-cake-6-edit.jpg",
  user_id: u2.id
  })

p3 = Project.create!({
  title: "Smart Fridge",
  start_date: Date.parse('01-06-2017'),
  end_date: Date.parse('16-06-2017'),
  duration: 15,
  image: "http://media2.wptv.com//photo/2012/08/15/home_20120815112228_640_480.JPG",
  user_id: u1.id
  })

p4 = Project.create!({
  title: "Pad",
  start_date: Date.parse('05-06-2017'),
  end_date: Date.parse('26-06-2017'),
  duration: 21,
  image: "https://i.ytimg.com/vi/kSF534Blv6Q/maxresdefault.jpg",
  user_id: u1.id
  })


t1 = Task.create!({
  description: "back-end",
  start_day: 1,
  due_day: 12,
  completed: false,
  blocked: false,
  color: "e74c3c",
  project_id: p1.id
})
t2 = Task.create!({
  description: "make sausage flappy",
  start_day: 2,
  due_day: 10,
  completed: false,
  blocked: false,
  color: "2ecc71",
  project_id: p1.id
})
t3 = Task.create!({
  description: "font-end auth",
  start_day: 4,
  due_day: 8,
  completed: false,
  blocked: false,
  color: "2ecc71",
  project_id: p1.id
})
t4 = Task.create!({
  description: "team meeting",
  start_day: 8,
  due_day: 9,
  completed: false,
  blocked: false,
  color: "1abc9c",
  project_id: p1.id
  })
t5 = Task.create!({
  description: "clean up the styling",
  start_day: 22,
  due_day: 23,
  completed: false,
  blocked: false,
  color: "f1c40f",
  project_id: p1.id
  })
t6 = Task.create!({
  description: "pictures",
  start_day: 16,
  due_day: 20,
  completed: false,
  blocked: false,
  color: "f1c40f",
  project_id: p1.id
  })
t7 = Task.create!({
  description: "build skynet",
  start_day: 9,
  due_day: 13,
  completed: false,
  blocked: false,
  color: "e74c3c",
  project_id: p1.id
  })
t8 = Task.create!({
  description: "extra flappy sausage",
  start_day: 18,
  due_day: 23,
  completed: false,
  blocked: false,
  color: "e74c3c",
  project_id: p1.id
  })

m1 = p1.milestones.create!({
  title: "sausage",
  day: 7,
  completed: false
  })
m2 = p1.milestones.create!({
  title: "machine learning",
  day: 3,
  completed: false
  })
m3 = p1.milestones.create!({
  title: "html mockups",
  day: 10,
  completed: false
  })
m4 = p1.milestones.create!({
  title: "ship it",
  day: 24,
  completed: false
  })

# m1.tasks << p1.tasks
t1.users << [u1, u2]
t2.users << [u2, u3]
t3.users << [u1, u2, u3]
t4.users << [u1, u3]
# p1.users << [u1, u2]
u1.projects << [p1,p3]
