# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.create(name: 'Web Development', start_date: Time.now, end_date: 3.months.from_now,
description: "At DevPoint we help beginners who may have struggled in the past to teach
themselves how to program. Our learning approach incorporates pair programming with
traditional lectures and a mix of group projects, lean methodologies, hackathons,
industry guest speakers, and one-on-ones with instructors, TAs, and mentors.")
