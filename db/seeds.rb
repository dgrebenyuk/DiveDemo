Device.destroy_all

2.times do
  device = Device.create(
    ip: Faker::Internet.private_ip_v4_address,
    netmask: '24',
    vendor: Faker::Device.manufacturer,
    description: Faker::Lorem.paragraph
  )

  2.times do
    device.cameras.create(
      name: Faker::House.room.titleize,
      username: Faker::Internet.username,
      password: Faker::Internet.password
    )
  end
end
