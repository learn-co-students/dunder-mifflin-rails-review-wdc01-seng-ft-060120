class RemoveEmployeeIdFromDogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :dogs, :employee_id, :integer
  end
end
