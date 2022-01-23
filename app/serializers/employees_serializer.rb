# make a serializer for the Employee model
class EmployeesSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :birthdate, :admission_date, :salary, :created_at, :updated_at, :role_name

  def role_name
    object.role.name
  end
end
