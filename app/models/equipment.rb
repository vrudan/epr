class Equipment < ApplicationRecord
  validates :name, :equipment_type, presence: true
  has_many :operation, dependent: :delete_all
  accepts_nested_attributes_for :operation
end
