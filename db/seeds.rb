# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Address.delete_all
Product.delete_all
Category.delete_all
CartItem.delete_all
Cart.delete_all
OrderDetail.delete_all
Order.delete_all
Setting.delete_all

User.create!(
email: "admin@qzy.com",
password: "12345678",
is_admin: true
)

User.create!(
email: "liuchan@qzy.com",
password: "12345678",
is_admin: true
)

user = User.create!(
email: "ppgod@live.cn",
password: "12345678",
is_admin: true
)

LABELS = ["公司","家","宿舍"]
3.times do |time|
  Address.create!(
  label: LABELS[time],
  name: "潘鹏",
  cellphone: "15652598157",
  address: "测试地址 #{time + 1}",
  user: user
  )
end
