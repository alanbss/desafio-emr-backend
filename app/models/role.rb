class Role < ApplicationRecord
  has_many :employees, dependent: :destroy

  validates_presence_of :name, :description, :activities
end
