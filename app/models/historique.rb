class Historique < ApplicationRecord
  belongs_to :user
  belongs_to :indecision
  has_many :notifications
end
