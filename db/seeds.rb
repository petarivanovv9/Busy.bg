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
role_activities = RoleActivity.create ([
  {:role_id => it.id, :activity_id => web_sites.id },
  {:role_id => it.id, :activity_id => applications.id},
  {:role_id => teacher.id, :activity_id => maths.id},
  {:role_id => teacher.id, :activity_id => literature.id},
  {:role_id => accountant.id, :activity_id => week_report.id},
  {:role_id => accountant.id, :activity_id => year_report.id}
])

City.find_or_create_by_name('София')
City.find_or_create_by_name('Пловдив')
City.find_or_create_by_name('Варна')
City.find_or_create_by_name('Бургас')
City.find_or_create_by_name('Русе')
City.find_or_create_by_name('Видин')
City.find_or_create_by_name('Монтана')
City.find_or_create_by_name('Стара Загора')
City.find_or_create_by_name('Плевен')
City.find_or_create_by_name('Добрич')
City.find_or_create_by_name('Сливен')
City.find_or_create_by_name('Шумен')
City.find_or_create_by_name('Перник')
City.find_or_create_by_name('Хасково')
City.find_or_create_by_name('Ямбол')
City.find_or_create_by_name('Пазарджик')
City.find_or_create_by_name('Благоевград')
City.find_or_create_by_name('Велико Търново')
City.find_or_create_by_name('Враца')
City.find_or_create_by_name('Габрово')
City.find_or_create_by_name('Асеновград')
City.find_or_create_by_name('Казънлък')
City.find_or_create_by_name('Кърджали')
City.find_or_create_by_name('Кюстендил')
City.find_or_create_by_name('Димитровград')
City.find_or_create_by_name('Търговище')
City.find_or_create_by_name('Силистра')
City.find_or_create_by_name('Ловеч')
City.find_or_create_by_name('Дупница')
City.find_or_create_by_name('Разград')
City.find_or_create_by_name('Горна Оряховица')
City.find_or_create_by_name('Свищов')
City.find_or_create_by_name('Петрич')
City.find_or_create_by_name('Смолян')
City.find_or_create_by_name('Сандански')
City.find_or_create_by_name('Самоков')
City.find_or_create_by_name('Велинград')
City.find_or_create_by_name('Севлиево')
City.find_or_create_by_name('Лом')
City.find_or_create_by_name('Карлово')
