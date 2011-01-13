class AddUpdatedAt < ActiveRecord::Migration

  class Product < ActiveRecord::Base; end
  
  def self.up
    add_column :products, :updated_at, :datetime

    # examples tweaking data with ActiveRecord

    # create Product
    Product.create(:name => 'Better Foosball Table')
        
    # interate through all products
    Product.all.each do |product|
      product.update_attribute(:updated_at, Time.now)
    end
  end
 
  def self.down
    remove_column :products, :updated_at
  end
  
end