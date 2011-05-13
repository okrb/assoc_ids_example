class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :people, through: :categorizations
end
