class Tag < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  has_many :classifications
  has_many :shirts, through: :classifications
end
