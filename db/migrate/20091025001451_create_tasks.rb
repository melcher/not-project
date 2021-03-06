class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.references :user
      t.string :name
      t.float :estimate
      t.string :state
      t.refences :category
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
