class Option < ApplicationRecord
  belongs_to :indecision
  has_many :indecisions, foreign_key: "reponse_heliast_id", dependent: :destroy
  has_many :indecisions, foreign_key: "reponse_indecis_id", dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
