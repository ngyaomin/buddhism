FactoryGirl.define do
  factory :puja do |f|
    f.name "Pujaname"
    f.description "Pujadescription"
    f.benefit "Pujabenefit"
    f.suggested_offering "100"
  end
end

# require 'faker'
#
# FactoryGirl.define do
#   factory :puja do |f|
#     f.name { Faker::Superhero.name }
#     f.description { Faker::Superhero.descriptor }
#     f.benefit {Faker::Superhero.prefix}
#     f.suggested_offering {Faker::Superhero.power}
#   end
# end
