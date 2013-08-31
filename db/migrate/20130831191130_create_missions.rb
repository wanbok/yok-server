class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.references :group, index: true
      t.string :content
      t.decimal :duration, precision: 20

      t.timestamps
    end
  end
end
