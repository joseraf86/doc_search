class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable,
  # :confirmable,
  # :omniauthable
  # :registerable,
  # :recoverable,
  # :rememberable,
  # :lockable,

  devise :database_authenticatable, 
         :trackable,
         :validatable,
         :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :nombre, :email, :password
  # attr_accessible :password_confirmation, :remember_me

  validates :nombre, :length => { :in => 4..20 }, :uniqueness => true
end
