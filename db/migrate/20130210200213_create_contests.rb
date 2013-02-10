class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.text :prize
      t.boolean :present_to_win
      t.datetime :start_date
      t.datetime :end_date
      t.integer :sponsor_id
      t.integer :meeting_id

      t.timestamps
    end
  end
end
