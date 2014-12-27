json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :gender, :employee_id, :company_id, :current_balance, :current_pay, :date_of_hire, :date_of_birth
  json.url employee_url(employee, format: :json)
end
