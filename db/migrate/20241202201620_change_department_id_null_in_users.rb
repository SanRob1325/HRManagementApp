class ChangeDepartmentIdNullInUsers < ActiveRecord::Migration[7.2]
  def change
    change_column_null :users, :department_id, true
  end
end
