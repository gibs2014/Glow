class OrderItem < ActiveRecord::Base
  belongs_to :order

 # rmdb comparison:
   # belongs_to :director
   #    def director
   #        return Director.find(director_id)
   #end
  belongs_to :item

  validates :order_id, :presence => true
  validates :item_id, :presence => true

end
