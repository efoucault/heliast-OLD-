class Indecision < ApplicationRecord
  belongs_to :heliast, foreign_key: "heliast_id", class_name: "User", optional: true
  belongs_to :indecis, foreign_key: "indecis_id", class_name: "User"
  has_many :options
  belongs_to :reponse_heliast, foreign_key: "reponse_heliast_id", class_name: "Option", optional: true
  belongs_to :reponse_indecis, foreign_key: "reponse_indecis_id", class_name: "Option", optional: true

  #Pour afficher les users correctement dans Active admin
  def name
    "#{titre} - #{created_at}"
  end
end
