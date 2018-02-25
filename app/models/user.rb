class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
		 :recoverable, :rememberable, :trackable, :validatable

  has_many :events, dependent: :destroy
  has_many :rsvps, dependent: :destroy
  has_many :favorites, dependent: :destroy

	validates_presence_of :name, :email, :password
end
