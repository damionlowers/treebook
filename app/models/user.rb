class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    def fullname
    	first_name + " " + last_name
    end

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :profile_name, presence: true,
    						 uniqueness: true,
    						 format: {
    						 	with: /a-zA-Z0-9/,
    						 	message: 'Must be formatted correctly.'
    						 }
end