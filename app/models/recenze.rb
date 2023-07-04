class Recenze < ApplicationRecord
    validates :name, :description, format: { with: /\A[a-zA-Z-.,_ˇ´ ]*+\z/ ,
        message: "pouze písmena" }, presence: true
    validates :hodnoceni, numericality: true, length: { minimum: 1 }
end
