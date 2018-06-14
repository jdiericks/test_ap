class CreateTimecards < ActiveRecord::Migration[5.2]
  def change
    create_table :timecards do |t|
      t.string :date
      t.integer :return
      t.integer :placements
      t.integer :hours

      t.timestamps
    end
  end
end
