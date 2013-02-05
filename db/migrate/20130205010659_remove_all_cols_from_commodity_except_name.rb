class RemoveAllColsFromCommodityExceptName < ActiveRecord::Migration
  def up
    remove_column :commodities, :import_price
    remove_column :commodities, :export_price
    remove_column :commodities, :import_count
    remove_column :commodities, :export_count
    remove_column :commodities, :created_at
    remove_column :commodities, :updated_at
  end

  def down
    add_column :commodities, :import_price, :float
    add_column :commodities, :export_price, :float
    add_column :commodities, :import_count, :integer
    add_column :commodities, :export_count, :integer
    add_column :commodities, :created_at, :timestamp
    add_column :commodities, :updated_at, :timestamp
  end
end
