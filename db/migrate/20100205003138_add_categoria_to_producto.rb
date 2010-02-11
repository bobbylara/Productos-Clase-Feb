class AddCategoriaToProducto < ActiveRecord::Migration
  def self.up
    add_column :productos, :categoria_id, :integer
  end

  def self.down
    remove_column :productos, :categoria_id
  end
end
