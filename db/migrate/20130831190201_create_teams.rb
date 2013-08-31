class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.references :group, index: true
      t.string :name

      t.timestamps
    end
    add_column :users, :team_id, :integer
  end
end
