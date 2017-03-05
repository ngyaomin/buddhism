# FactoryGirl.define do
#     factory :puja do
#       name                'Pujaname'
#       description         'Pujadescription'
#       benefit             'Pujabenefit'
#       suggested_offering   100
#     end

  #  factory :puja do |f|
  #    name                 { Faker::Superhero.name  }
  #    description          { Faker::Superhero.descriptor }
  #    benefit              { Faker::Superhero.prefix }
  #    suggested_offering   {Faker::Superhero.power}
  # end
  #
# end

require 'faker'

FactoryGirl.define do
  factory :puja do
    name "pujaname"
    description "Pujadescription"
    benefit "Pujabenefit"
    suggested_offering "100"
  end
end



# factory :invalid_puja, parent: :contact do |f|
#   f.name nil
# end
