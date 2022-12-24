rand_part = Random.hex[0..10]

user_verified = User.create! email: "user_verified#{rand_part}@test.com", password: '12345password', username: "userverified#{rand_part}", isVerified: true
item_verified = Item.create! title: "test item verified", description: 'verified seller item', user: user_verified, slug: 'verified_seller_item'
user_not_verified = User.create! email: "user_not_verified#{rand_part}@test.com", password: '12345password', username: "usernotverified#{rand_part}", isVerified: false
item_not_verified = Item.create! title: "test item not verified", description: 'not verified seller item', user: user_not_verified, slug: 'not_verified_seller_item'
