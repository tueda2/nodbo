class EmployeesTable < ActiveRecord::Migration
	def change
		create_table :employees do |t|
			t.string :name
			t.string :gender
			t.integer :e_id
			t.datetime :date_of_hire
			t.datetime :date_of_birth
			t.integer :current_balance
			t.integer :current_pay
			t.integer :company_id
			t.timestamps
		end
	end
end
