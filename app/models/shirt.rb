class Shirt < ActiveRecord::Base
  has_many :classifications
  has_many :tags, through: :classifications
end
