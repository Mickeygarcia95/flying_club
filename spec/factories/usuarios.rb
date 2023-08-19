FactoryBot.define do
  factory :usuario do
    nombre { "John" }
    apellidos { "Doe" }
    rut { "12345678-9" }
    email { "john@example.com" }
    password { "password" }
    # add other attributes here
  end
end