class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.references :user, index: true
      t.integer :curse_count
      t.string :diary
      t.datetime :date

      t.timestamps
    end
  end
end
