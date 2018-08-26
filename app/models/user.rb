class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :indecisions, foreign_key: "heliast_id", dependent: :destroy
  has_many :indecisions, foreign_key: "indecis_id", dependent: :destroy
end
