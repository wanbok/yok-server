# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


teacher_kim = User.create({name: '김샘', phonenumber: '01012344321', password: 'password', password_confirmation: 'password', role: :teacher})
teacher_jeong = User.create({name: '정샘', phonenumber: '01012333321', password: 'password', password_confirmation: 'password', role: :teacher})

student_a = User.create({name: '김학생', phonenumber: '01099999999', password: 'password', password_confirmation: 'password', role: :student})
student_b = User.create({name: '이학생', phonenumber: '01099999998', password: 'password', password_confirmation: 'password', role: :student})
student_c = User.create({name: '저학생', phonenumber: '01099999997', password: 'password', password_confirmation: 'password', role: :student})
student_d = User.create({name: '요학생', phonenumber: '01099999996', password: 'password', password_confirmation: 'password', role: :student})
student_e = User.create({name: '조학생', phonenumber: '01099999995', password: 'password', password_confirmation: 'password', role: :student})
student_f = User.create({name: '최학생', phonenumber: '01099999994', password: 'password', password_confirmation: 'password', role: :student})