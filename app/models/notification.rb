class Notification < ApplicationRecord
  belongs_to :historique
  belongs_to :indecision
end
