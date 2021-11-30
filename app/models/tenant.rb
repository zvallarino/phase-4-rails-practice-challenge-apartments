class Tenant < ApplicationRecord
  has_many :leases
  has_many :apartment, through: :leases

  validates :name, presence: true
  validates_numericality_of :age, greater_than: 18
end
