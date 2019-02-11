User.create!(name:  "Koshi",
             email: "bz@gmail.com",
             password:              "ferrer",
             password_confirmation: "ferrer",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

# カテゴリー
Category.create!(title: "Germany",
                 description: "Let's learn German!")

Category.create!(title: "French",
                description: "Let's learning French")

# ワード


# リレーションシップ
users = User.all
user = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }