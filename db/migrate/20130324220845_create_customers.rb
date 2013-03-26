class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :nama
      t.string :no_kp
      t.string :umur
      t.string :alamat
      t.string :negeri
      t.string :daerah
      t.string :poskod
      t.string :penyakit
      t.date :tarikh_mula
      t.integer :aktif

      t.timestamps
    end
  end
end
