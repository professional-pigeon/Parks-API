FactoryBot.define do
  factory(:park) do
    park_name {Faker::Name.last_name},
    state {Faker::Address.state},
    city {Faker::Address.city},
    park_type {"State park"},
    description {Faker::Lorem.sentence(word_count: 20)}
  end
end