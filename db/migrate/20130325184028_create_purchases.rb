class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :produk
      t.integer :kuantiti
      t.date :tarikh_belian
      t.integer :agent_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
