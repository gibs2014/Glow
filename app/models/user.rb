class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders
  has_many :items, :through => :orders


  validates :size, :presence => true, :numericality => {only_integer:true}
  validates :body_shape, :presence => true
  validates :email_address, :uniqueness => true

  def full_name
    return first_name + " " + second_name
  end
end
