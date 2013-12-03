class User < ActiveRecord::Base
  has_many :orders
  has_many :items, :through => :orders


  validates :size, :presence => true, :numericality => {only_integer:true}
  validates :body_shape, :presence => true
  validates :email_address, :uniqueness => true

  def full_name
    return first_name + " " + second_name
  end
end
