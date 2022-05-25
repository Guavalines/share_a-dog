10.times do |n|
  puts "Generating user #{n + 1}"
  user = User.create!(
    email: "user#{n + 1}@owner.com",
    password: "123456",
    name: Faker::Name.name,
    phone_number: Faker::PhoneNumber.phone_number,
    address: Faker::Address.street_address
  )

  rand(1..3).times do
    puts "Generating dog for user #{n + 1}"
    Dog.create!(
      name: Faker::Creature::Dog.name,
      breed: Faker::Creature::Dog.breed,
      born_on: rand(Date.new(2012, 1, 1)..Date.today),
      sex: ["male", "female"].sample,
      neutered: [true, false].sample,
      size: %w[small medium large giant].sample,
      user: user
    )
  end
end


<div class="container">
      <h2>Mobile full-screen, laptop half-half</h2>

      <div class="row">
        <div class="col-lg-6">
          <div class="card bg-light">
            😀
          </div>
        </div>
        <div class="col-lg-6">
          <div class="card bg-light">
            😀
          </div>
        </div>
      </div>
    </div>
<h2>Mobile full-screen, laptop half-half</h2>
<div class="row">
        <div class="col-lg-6">
          <div class="card bg-light">
            😀
          </div>
        </div>
        <div class="col-lg-6">
          <div class="card bg-light">
            😀
          </div>
        </div>
      </div>
<div class="col-lg-6">
          <div class="card bg-light">
            😀
          </div>
        </div>
<div class="card bg-light">
            😀
          </div>
<div class="col-lg-6">
          <div class="card bg-light">
            😀
          </div>
        </div>
<div class="col-lg-6">
          <div class="card bg-light">
            😀
          </div>
        </div>
<div class="card bg-light">
            😀
          </div>
<div class="col-lg-6">
          <div class="card bg-light">
            😀
          </div>
        </div>
<div class="row">
        <div class="col-lg-6">
          <div class="card bg-light">
            😀
          </div>
        </div>
        <div class="col-lg-6">
          <div class="card bg-light">
            😀
          </div>
        </div>
      </div>
<div class="container">
      <h2>Mobile full-screen, laptop half-half</h2>

      <div class="row">
        <div class="col-lg-6">
          <div class="card bg-light">
            😀
          </div>
        </div>
        <div class="col-lg-6">
          <div class="card bg-light">
            😀
          </div>
        </div>
      </div>
    </div>
