class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  has_many :indecisions, foreign_key: "heliast_id", dependent: :destroy
  has_many :indecisions, foreign_key: "indecis_id", dependent: :destroy
  mount_uploader :photo, PhotoUploader
  #Pour afficher les users correctement dans Active admin
  def name
    "#{id} - #{email}"
  end
end
