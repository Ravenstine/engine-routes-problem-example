# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  NewsStory.create name: "name", headline: "headline", short_headline: "short headline", title: "title", body: "lorem ipsum dolor sit ahmet"
end

User.where(username: "testuser").first_or_create name: "John Smith", email: "testuser@safetymail.info", password: "password123"

Permission.create resource: "NewsStory"

UserPermission.create user_id: User.last.id, permission_id: Permission.last.id