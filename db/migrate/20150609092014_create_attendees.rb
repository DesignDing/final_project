class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :name
      t.references :trip, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
