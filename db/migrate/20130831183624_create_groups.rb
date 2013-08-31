class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :teacher_id, references: :users
      t.integer :size_of_team

      t.timestamps
    end
  end
end
