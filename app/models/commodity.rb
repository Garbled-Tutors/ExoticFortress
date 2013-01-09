class Commodity < ActiveRecord::Base
  attr_accessible :export_count, :export_price, :import_count, :import_price, :name
end
