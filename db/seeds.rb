# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
post1 = Post.new
post1.title = "My first post"
post1.kind = "text"
post1.content = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
post1.save

2.times do
	post1.hearts.create	
end

post2 = Post.new(title: "My second post", kind: "image")
post2.content = "http://www.stubsandnubspetsitting.com/wp-content/uploads/2015/04/Tyrion.png"
post2.save

5.times {post2.hearts.create}


post3 = Post.create(
	title: "New Image Post",
 	kind: "image",
	content: "http://www.stubsandnubspetsitting.com/wp-content/uploads/2015/04/more-pics-068.png"
	)
post3.save

8.times {post3.hearts.create}


