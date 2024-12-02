class AddNotesToAttendances < ActiveRecord::Migration[7.2]
  def change
    add_column :attendances, :notes, :string
  end
end
