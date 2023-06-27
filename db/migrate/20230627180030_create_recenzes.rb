class CreateRecenze < ActiveRecord::Migration[7.0]
  def change
    create_table :recenze do |t|
      t.string :name
      t.text :description
      t.decimal :rating, precision: 2, scale:0

      t.timestamps
    end
  end
end
