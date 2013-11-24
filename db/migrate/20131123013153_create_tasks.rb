class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :complete, :default => false
      t.integer :grant_id

      t.timestamps
    end
  end
end
