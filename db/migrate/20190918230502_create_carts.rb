class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.belongs_to :user, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
