class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0}
  validate :is_apperal
end

def is_apperal
  if :mens_apperal === false && :womens_apperal === false
    errors.add(:apperal, "Must sell mens or womans cloths")
  end
end