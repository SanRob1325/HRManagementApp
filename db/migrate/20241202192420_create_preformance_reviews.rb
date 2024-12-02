class CreatePreformanceReviews < ActiveRecord::Migration[7.2]
  def change
    create_table :preformance_reviews do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :reviewer, null: false, foreign_key: true
      t.text :comments
      t.integer :rating

      t.timestamps
    end
  end
end
