class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.integer :zipcode
      t.string :city
      t.string :stripe_customer_id
      t.references :user, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
