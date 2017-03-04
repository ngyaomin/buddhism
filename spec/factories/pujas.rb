FactoryGirl.define do
    factory :puja do
      name                'Pujaname'
      description         'Pujadescription'
      benefit             'Pujabenefit'
      suggested_offering   100
    end

  #  factory :puja do
  #    name                 { Faker::Superhero.name  }
  #    description          { Faker::Superhero.descriptor }
  #    benefit              { Faker::Superhero.prefix }
  #    suggested_offering   {Faker::Superhero.power}
  # end
  #
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
