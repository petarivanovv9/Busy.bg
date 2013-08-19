# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if AdminUser.find_by_email('admin@example.com').blank?

	AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
end


it = Role.find_or_create_by_name('IT')
teacher = Role.find_or_create_by_name('Teacher')
accountant = Role.find_or_create_by_name('Accountant')
client = Role.find_or_create_by_name('Client')

web_sites = Activity.find_or_create_by_name('web sites')
applications = Activity.find_or_create_by_name('applications')
maths = Activity.find_or_create_by_name('maths')
literature = Activity.find_or_create_by_name('literature')
week_report = Activity.find_or_create_by_name('week report')
year_report = Activity.find_or_create_by_name('year report')

RoleActivity.delete_all
role_activities = RoleActivity.create ([{:role_id => it.id, :activity_id => web_sites.id }, {:role_id => it.id, :activity_id => applications.id}, {:role_id => teacher.id, :activity_id => maths.id}, {:role_id => teacher.id, :activity_id => literature.id}, {:role_id => accountant.id, :activity_id => week_report.id}, {:role_id => accountant.id, :activity_id => year_report.id}])

city1 = City.find_or_create_by_name('Sofia')
city2 = City.find_or_create_by_name('Plovdiv') 
city3 = City.find_or_create_by_name('Varna') 
city4 = City.find_or_create_by_name('Burgas') 
city5 = City.find_or_create_by_name('Ruse') 
city6 = City.find_or_create_by_name('Vidin') 
city7 = City.find_or_create_by_name('Montana')
