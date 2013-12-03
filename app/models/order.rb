class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_items
  has_many :items, :through => :order_items

  validates :user_id, :presence => true

end

 # rmdb comparison:
   # belongs_to :director
   #    def director
   #        return Director.find(director_id)
   #end

#rmdb comparison 2@
# has_many :roles
#   def roles
#       return Role.where(:movie_id => id)
#end
