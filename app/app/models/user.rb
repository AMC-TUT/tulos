class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_taggable_on :groups

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true

  validates :username, :presence => true
  validates :password, :presence => true
  validates :password_confirmation, :presence => true
end
