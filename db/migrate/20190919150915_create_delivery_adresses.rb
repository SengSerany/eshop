class CreateDeliveryAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_adresses do |t|
      t.string :street
      t.integer :zipcode
      t.string :city
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
