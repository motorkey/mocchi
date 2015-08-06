class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :user_id
      t.string :start_end
      t.datetime :time

      t.timestamps null: false
    end
  end
end
