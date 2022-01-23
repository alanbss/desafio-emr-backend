class Employee < ApplicationRecord
  belongs_to :role

  validates_presence_of :first_name,
                        :last_name,
                        :birthdate,
                        :admission_date,
                        :salary
end
