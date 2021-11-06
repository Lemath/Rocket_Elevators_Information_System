 class User < ApplicationRecord
  # Include default devise modules. Others available are:
 
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :quotes
  has_one :customer 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         


end
