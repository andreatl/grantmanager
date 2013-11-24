class CreateGrants < ActiveRecord::Migration
  def change
    create_table :grants do |t|
      t.string :title
      t.string :organization
      t.integer :value
      t.date :duedate

      t.timestamps
    end
  end
end
