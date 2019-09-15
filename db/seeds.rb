# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all

Recipe.create!([
  {chef: "Bad Josh", title: "Hand Sandwich", ingredients: "left hand, right hand", directions: "put your hands together, Wisconsin!", image_url: "http://occ144datkn3vrjlq7r63p19.wpengine.netdna-cdn.com/wp-content/uploads/2012/06/Hand-Sandwiches.jpeg", prep_time: 1},
  {chef: "Mac Tonight", title: "Burger", ingredients: "car, money", directions: "drive to Mcdondal's, order burger from fiberglass clown, pull up to the window, exchange burger for money", image_url: "http://mcdonalds.hr/content/uploads/2014/03/big-mac1.png", prep_time: 5},
  {chef: "Hannibal", title: "Fava Bean side dish", ingredients: "ice, tap water, 2 lbs fresh fava beans in the pod, 1 tablespoon butter, 1 teaspoon olive oil, 2 garlic cloves", directions: "boil 4 cups of water, add salt, place fava beans in the boiling water for 5 min, remove fava beans and place in ice water, add seasoning to taste", image_url: "http://bijouxs.com/wp-content/uploads/2011/05/Favabordercropsmall.jpg", prep_time: 125},
  {chef: "Cookie Monster", title: "Cookies", ingredients: "cookie mix, milk, eggs", directions: "pour mix into bowl, add milk and eggs, stir well, bake", image_url: "http://1.bp.blogspot.com/-w-i7-dRn_V0/TeZP9aAxPBI/AAAAAAAAAR4/8E_-JCJlEmQ/s1600/Apri2011+055pwm.jpg", prep_time: 480},
  {chef: "Josh", title: "Egg", ingredients: "chicken", directions: "squeeze chicken", image_url: "https://boost-rankedboost.netdna-ssl.com/wp-content/uploads/2016/07/Pokemon-Go-Egg.png", prep_time: 4},
  {chef: "Garfield", title: "Lasagna", ingredients: "noodles, tomato paste, meat, onions, garlic, other stuff", directions: "layer noodles, add sauce, layer noodles, add meat, layer noodles, add onions, layer noodles, add other stuff, finish with a layer of noodles", image_url: "https://m.popkey.co/1e0d43/Vo6a3.gif", prep_time: 60}
])
