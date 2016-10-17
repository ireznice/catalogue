
require 'sequel'

class Item < Sequel::Model(:item)
  def self.root_items
    filter(parent_id: nil)
  end
end


