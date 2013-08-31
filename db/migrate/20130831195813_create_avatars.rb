class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.references :user, index: true
      t.string :head
      t.string :head_back
      t.string :head_front
      t.string :torso
      t.string :torso_back
      t.string :torso_front
      t.string :leg
      t.string :leg_back
      t.string :leg_front
      t.string :whole_back
      t.string :accessary

      t.timestamps
    end
  end
end
