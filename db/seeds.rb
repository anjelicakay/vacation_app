Item.create!([
  {name: "Jacket", list_id: 1},
  {name: "Tooth brush", list_id: 1},
  {name: "Snow boots", list_id: 1},
  {name: "Baseball Cap", list_id: 2},
  {name: "Bug Spray", list_id: 2},
  {name: "Sunglasses", list_id: 2}
])
List.create!([
  {user_id: 1, name: "Antarctica"},
  {user_id: 1, name: "Ecuador"}
])
User.create!([
  {email: "jerseymike@gmail.com", gender: "male", name: "Mike", password_digest: "password"},
  {email: "biganj@gmail.com", gender: "female", name: "Anjelica", password_digest: "password"}
])
