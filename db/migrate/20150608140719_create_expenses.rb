class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.date :date
      t.string :payer
      t.text :description
      t.decimal :amount
      #t.references :attendee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
