class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

  # attr_accessible :email, :password, :password_confirmation       
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :dob, presence: true
end
