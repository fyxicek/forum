class Recenze < ApplicationRecord
    validates :name, :description, format: { with: /\A[a-zA-Z-._ ]*+\z/ ,
        message: "pouze písmena" }, presence: true
    validates :hodnoceni, numericality: { only_integer: false }, format: { with: /\A[%]?\d+\z/}, length: { minimum: 1 }
end
