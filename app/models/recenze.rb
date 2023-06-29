class Recenze < ApplicationRecord
    validates :name, :description, presence: true
    validates :hodnoceni, numericality: true
    has_one_attached :image
end
