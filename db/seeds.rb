user = User.create(email: "michelle@example.com", password: "password", first_name: "Michelle", last_name: "Retson", address: "8053 Cleveland Pl", city: "Merrillville", state: "IN", zip: "46410", company: "HHH", phone: "773-669-4673")

humidor = Item.create(
  {
    item_name: "Humidor",
    description: "Cedar humidor, pre-seasoned and loaded with a BONUS GIFT: 6 Cuban cigars brought back personally from Cuba by Dr. Retson.",
    value: 40,
    starting_bid: 40,
    incr: 10,
    donor: "Healing, Health, & Hope",
    photo: "humidor.jpg",
    category: "Other"
  }
)

buckle = Item.create(
  {
    item_name: "Diamond/Rhodium Bracelet",
    description: "Rhodium Plated Diamond Accent & Black Enamel Belt Buckle Bangle Bracelet: SilverSpeck Metal: Brass, Material :  Enamel, Gem Type: Diamond, Setting: Pave setting, Width: 12 mm,  Length : 7 in, Clasp: Box with tongue and safety, Stone Weight: 0.01 carats ",
    value: 80,
    starting_bid: 20,
    incr: 10,
    donor: "Groupon, Inc.",
    photo: "buckle.jpg",
    category: "Jewelry"
  }
)

car = Item.create(
  {
    item_name: "Car Care Basket",
    description: "$25 Gift Card for Advanced Auto Parts, various car cleaning items",
    value: 40,
    starting_bid: 5,
    incr: 5,
    donor: "Advanced Auto Parts",
    photo: "carcare.jpg",
    category: "Gift Cards"
  }
)

humidor_bid = Bid.create(
  {
    item_id: humidor.id,
    user_id: user.id,
    bid_amount: 40
  }
)

buckle_bid = Bid.create(
  {
    item_id: buckle.id,
    user_id: user.id,
    bid_amount: 20
  }
)

car_bid = Bid.create(
  {
    item_id: car.id,
    user_id: user.id,
    bid_amount: 20
  }
)
