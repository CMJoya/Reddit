if User.count == 0
  User.create name: "Faker::Superhero.name"
  User.create name: "Faker::Superhero.name"
end

if Post.count == 0
  Post.create title: "Faker::Company.bs", url: "https://github.com/CMJoya/Iron-Library.git", user_id: 1
  Post.create title: "Faker::Company.bs", url: "https://github.com/CMJoya/Week-7-Lab.git", user_id: 1
  Post.create title: "Faker::Company.bs", url: "https://github.com/CMJoya/Mallory-Furniture.git", user_id: 2
end
