class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :gender
      t.integer :employee_id
      t.integer :company_id
      t.decimal :current_balance
      t.decimal :current_pay
      t.date :date_of_hire
      t.date :date_of_birth

      t.timestamps
    end
  end
end
