# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teacher_kim = User.create({name: '김샘', phonenumber: '01056564321', password: 'password', password_confirmation: 'password', role: :teacher})
teacher_jeong = User.create({name: '정샘', phonenumber: '01056563321', password: 'password', password_confirmation: 'password', role: :teacher})

group1 = Group.create({name: '이문초등학교 1학년 1반', teacher: teacher_kim})
group2 = Group.create({name: '청량초등학교 6학년 13반', teacher: teacher_jeong})

team1_1 = Team.create({name: '깻잎조', group: group1})
team1_2 = Team.create({name: '떡잎조', group: group1})
team1_3 = Team.create({name: '호박잎조', group: group1})
team2_1 = Team.create({name: '깨소금조', group: group2})
team2_2 = Team.create({name: '하늘조', group: group2})
team2_3 = Team.create({name: '뭐조', group: group2})

student_a = User.create({name: '김학생', team: team1_1, phonenumber: '01056569999', password: 'password', password_confirmation: 'password', role: :student})
student_b = User.create({name: '이학생', team: team1_1, phonenumber: '01056569998', password: 'password', password_confirmation: 'password', role: :student})
student_c = User.create({name: '저학생', team: team1_1, phonenumber: '01056569997', password: 'password', password_confirmation: 'password', role: :student})
student_d = User.create({name: '요학생', team: team1_1, phonenumber: '01056569996', password: 'password', password_confirmation: 'password', role: :student})

student_e = User.create({name: '조학생', team: team1_2, phonenumber: '01056569995', password: 'password', password_confirmation: 'password', role: :student})
student_f = User.create({name: '최학생', team: team1_2, phonenumber: '01056569994', password: 'password', password_confirmation: 'password', role: :student})
student_g = User.create({name: '김철수', team: team1_2, phonenumber: '01045459999', password: 'password', password_confirmation: 'password', role: :student})
student_h = User.create({name: '이철수', team: team1_2, phonenumber: '01045459998', password: 'password', password_confirmation: 'password', role: :student})

student_i = User.create({name: '저철수', team: team1_3, phonenumber: '01045459997', password: 'password', password_confirmation: 'password', role: :student})
student_j = User.create({name: '요철수', team: team1_3, phonenumber: '01045459996', password: 'password', password_confirmation: 'password', role: :student})
student_k = User.create({name: '조철수', team: team1_3, phonenumber: '01045459995', password: 'password', password_confirmation: 'password', role: :student})
student_l = User.create({name: '최철수', team: team1_3, phonenumber: '01045459994', password: 'password', password_confirmation: 'password', role: :student})

student_m = User.create({name: '김동혁', team: team2_1, phonenumber: '01034349999', password: 'password', password_confirmation: 'password', role: :student})
student_n = User.create({name: '이동혁', team: team2_1, phonenumber: '01034349998', password: 'password', password_confirmation: 'password', role: :student})
student_o = User.create({name: '저동혁', team: team2_1, phonenumber: '01034349997', password: 'password', password_confirmation: 'password', role: :student})
student_p = User.create({name: '요동혁', team: team2_1, phonenumber: '01034349996', password: 'password', password_confirmation: 'password', role: :student})

student_q = User.create({name: '조동혁', team: team2_2, phonenumber: '01034349995', password: 'password', password_confirmation: 'password', role: :student})
student_r = User.create({name: '최동혁', team: team2_3, phonenumber: '01034349994', password: 'password', password_confirmation: 'password', role: :student})

log1 = Log.create({student: student_a, date: Date.today, curse_count: 10, diary: "허허허"})
log2 = Log.create({student: student_b, date: Date.today, curse_count: 1, diary: "허허허허"})
log3 = Log.create({student: student_d, date: Date.today, curse_count: 5, diary: "허허허허허"})
log4 = Log.create({student: student_d, date: Date.today - 1, curse_count: 2, diary: "허허허허허허"})
log5 = Log.create({student: student_f, date: Date.today, curse_count: 3, diary: "허허허허허허허허"})

[student_a, student_b, student_c, student_d, student_e, student_f].each do |student|
  Avatar.create({head: "head", torso: "torso", leg: "leg", user: student})
end