dog_attributes = [
  { breed: "Yorkshire", size: "small", image_url: "app/assets/images/york.jpg" },
  { breed: "San Bernard", size: "giant", image_url: "app/assets/images/san_bernanrd.jpg" },
  { breed: "Rat Terrier", size: "small", image_url: "app/assets/images/jujuba.jpg" },
  { breed: "German Shepherd", size: "large", image_url: "app/assets/images/german_shepherd.jpg" },
  { breed: "chihuahua", size: "small", image_url: "app/assets/images/chihuahua.jpg" },
  { breed: "Golden Retriever", size: "large", image_url: "app/assets/images/golden_retriever.jpg" },
]
dog_attributes_index = -1

working_addresses = [
  "Xola 958, Narvarte Poniente - CDMX",
  "Avenida Alvaro Obregon 213, Roma Norte - CDMX",
  "Avenida Alvaro Obregon 52, Roma Norte - CDMX",
  "Avenida Chapultepec 6, 06600, CDMX",
  "Avenida Chapultepec 8, 06600, CDMX",
  "Avenida Chapultepec 12, Juarez, CDMX",
]
working_addresses_index = -1

dog_attributes.size.times do |n|
  puts "Generating user #{n + 1}"
  user = User.create!(
    email: "user#{n + 1}@owner.com",
    password: "123456",
    name: Faker::Name.name,
    phone_number: Faker::PhoneNumber.phone_number,
    address: Faker::Address.street_address
  )

  puts "Generating dog for user #{n + 1}"
  dog_info = dog_attributes[(dog_attributes_index += 1) % dog_attributes.size]
  dog = Dog.new(
    dog_info.except(:image_url).merge(
      name: Faker::Creature::Dog.name,
      born_on: rand(Date.new(2012, 1, 1)..Date.today),
      sex: ["male", "female"].sample,
      neutered: [true, false].sample,
      user: user,
      address: working_addresses[(working_addresses_index += 1) % working_addresses.size]
    )
  )
  # dog attach image
  file = File.open(dog_info[:image_url])
  dog.photo.attach(io: file, filename: "#{dog.name}-#{dog_info[:breed].downcase}.jpg", content_type: 'image/png')

  dog.save!
end
