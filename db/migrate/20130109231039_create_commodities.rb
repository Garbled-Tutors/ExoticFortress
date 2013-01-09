class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|
      t.string :name
      t.float :import_price
      t.float :export_price
      t.integer :import_count
      t.integer :export_count

      t.timestamps
    end
  end
end
