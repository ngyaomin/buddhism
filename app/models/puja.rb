class Puja < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :benefit, presence: true
  validates :suggested_offering, presence: true
end
