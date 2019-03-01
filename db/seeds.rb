User.create!([
  {email: "jerseymike@gmail.com", gender: "male", name: "Mike", password: "password", password_confirmation: "password"},
  {email: "biganj@gmail.com", gender: "female", name: "Anjelica", password: "password", password_confirmation: "password"}
])

List.create!([
  {user_id: 1, name: "Antarctica", date: nil},
  {user_id: 1, name: "Ecuador", date: nil},
  {user_id: 2, name: "New Jersey", date: "01/13/2020"},
  {user_id: 2, name: "New York", date: "03/10/1988"}
])

Item.create!([
  {name: "Jacket", list_id: 1},
  {name: "Tooth brush", list_id: 1},
  {name: "Snow boots", list_id: 1},
  {name: "Baseball Cap", list_id: 2},
  {name: "Bug Spray", list_id: 2},
  {name: "Sunglasses", list_id: 2}
])
