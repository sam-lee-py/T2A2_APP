class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :game, null: false, foreign_key: true
      t.references :buyer, null: false, foreign_key: {to_table: :users}
      t.references :seller, null: false, foreign_key: {to_table: :users}
      t.string :payment_id
      t.string :receipt_url

      t.timestamps
    end
  end
end
