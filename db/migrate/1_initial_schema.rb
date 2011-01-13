class InitialSchema < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.text :description
      t.datetime :created_at
    end
  end
 
  def self.down
    drop_table :products
  end
end