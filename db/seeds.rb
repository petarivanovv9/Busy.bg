# encoding: UTF-8
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
client = Role.find_or_create_by_name('Клиент')

web_sites = Activity.find_or_create_by_name('web sites')
applications = Activity.find_or_create_by_name('applications')
maths = Activity.find_or_create_by_name('maths')
literature = Activity.find_or_create_by_name('literature')
week_report = Activity.find_or_create_by_name('week report')
year_report = Activity.find_or_create_by_name('year report')

RoleActivity.delete_all
role_activities = RoleActivity.create ([{:role_id => it.id, :activity_id => web_sites.id }, {:role_id => it.id, :activity_id => applications.id}, {:role_id => teacher.id, :activity_id => maths.id}, {:role_id => teacher.id, :activity_id => literature.id}, {:role_id => accountant.id, :activity_id => week_report.id}, {:role_id => accountant.id, :activity_id => year_report.id}])

city1 = City.find_or_create_by_name('София')
city2 = City.find_or_create_by_name('Пловдив') 
city3 = City.find_or_create_by_name('Варна') 
city4 = City.find_or_create_by_name('Бургас') 
city5 = City.find_or_create_by_name('Русе') 
city6 = City.find_or_create_by_name('Видин') 
city7 = City.find_or_create_by_name('Монтана')
city8 = City.find_or_create_by_name('Стара Загора')
city9 = City.find_or_create_by_name('Плевен')
city10 = City.find_or_create_by_name('Добрич')
city11 = City.find_or_create_by_name('Сливен')
city12 = City.find_or_create_by_name('Шумен')
city13 = City.find_or_create_by_name('Перник')
city14 = City.find_or_create_by_name('Хасково')
city15 = City.find_or_create_by_name('Ямбол')
city16 = City.find_or_create_by_name('Пазарджик')
city17 = City.find_or_create_by_name('Благоевград')
city18 = City.find_or_create_by_name('Велико Търново')
city19 = City.find_or_create_by_name('Враца')
city20 = City.find_or_create_by_name('Габрово')
city21 = City.find_or_create_by_name('Асеновград')
city22 = City.find_or_create_by_name('Казънлък')
city23 = City.find_or_create_by_name('Кърджали')
city24 = City.find_or_create_by_name('Кюстендил')
city25 = City.find_or_create_by_name('Димитровград')
city26 = City.find_or_create_by_name('Търговище')
city27 = City.find_or_create_by_name('Силистра')
city28 = City.find_or_create_by_name('Ловеч')
city29 = City.find_or_create_by_name('Дупница')
city30 = City.find_or_create_by_name('Разград')
city31 = City.find_or_create_by_name('Горна Оряховица')
city32 = City.find_or_create_by_name('Свищов')
city33 = City.find_or_create_by_name('Петрич')
city34 = City.find_or_create_by_name('Смолян')
city35 = City.find_or_create_by_name('Сандански')
city36 = City.find_or_create_by_name('Самоков')
city37 = City.find_or_create_by_name('Велинград')
city38 = City.find_or_create_by_name('Севлиево')
city39 = City.find_or_create_by_name('Лом')
city40 = City.find_or_create_by_name('Карлово')