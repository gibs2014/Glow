class User < ActiveRecord::Base
  has_many :orders
  has_many :items, :through => :orders

  def full_name
    return first_name + " " + second_name
  end
end
