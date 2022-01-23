# migration that creates the employees table
class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.date :admission_date
      t.float :salary
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
