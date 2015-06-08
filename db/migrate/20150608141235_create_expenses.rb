class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.date :date
      t.string :payer
      t.text :description
      t.float :amount
      t.references :trip, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
