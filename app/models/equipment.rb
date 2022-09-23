class Equipment < ApplicationRecord
  validates :name, :equipment_type, presence: true

end
