25.times do |blog|
  Blog.create!(
    title: "Blog #{blog}",
    content: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
    thumb_image: "http://placehold.it/350X250"
  )
end

puts "25 blogs created"

name_array = ["Deven Clingman", "Jana Clingman", "Breanne Vogl", "Chad Vogl"]

5.times do |user|
  User.create(
    email: "user#{user}@user.com",
    password: "asdfasdf",
    name: name_array.sample
  )
end

puts "5 users created"

1.times do |admin|
  User.create(
    email: "bree@gmail.com",
    password: "asdfasdf",
    name: "Bree Clingman",
    roles: "site_admin"
  )
end

puts "1 Admin created"

arr = [1,2,3,4]

10.times do |post|
  Post.create!(
    title: "Post #{post}",
    description: "perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit",
    image: "http://placehold.it/350X150",
    user_id: arr.sample
  )
end



puts "10 posts created"