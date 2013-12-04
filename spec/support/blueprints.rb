require 'machinist/active_record'

User.blueprint do
  first_name { Faker::Name.first_name }
  last_name { Faker::Name.last_name }
  email { "#{sn}@meurio.org.br" }
  phone { Faker::PhoneNumber.cell_phone }
end
