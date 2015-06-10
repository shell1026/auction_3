user = User.create(email: "michelle@example.com", password: "password", first_name: "Michelle", last_name: "Retson", address: "123 Fake St.", city: "Chicago", state: "IL", zip: "60614", company: "HHH", phone: "555-555-5555")

humidor = Item.create(
  {
    item_name: "Humidor",
    description: "This is a great smoking devise.",
    value: 40,
    starting_bid: 20,
    incr: 1,
    donor: "Ronald McDonald",
    photo: "humidor.jpg",
    category: "Other"
  }
)

buckle = Item.create(
  {
    item_name: "Buckle",
    description: "Buckle it up.",
    value: 20,
    starting_bid: 10,
    incr: 1,
    donor: "Ryan Francis",
    photo: "buckle.jpg",
    category: "Other"
  }
)

humidor_bid = Bid.create(
  {
    item_id: humidor.id,
    user_id: user.id,
    bid_amount: 25
  }
)

buckle_bid = Bid.create(
  {
    item_id: buckle.id,
    user_id: user.id,
    bid_amount: 10
  }
)
