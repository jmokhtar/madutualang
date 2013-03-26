class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :nama
      t.string :no_kp
      t.string :umur
      t.string :alamat
      t.string :negeri
      t.string :daerah
      t.date :tarikh_mula
      t.integer :aktif
      t.integer :pengurus

      t.timestamps
    end
  end
end
