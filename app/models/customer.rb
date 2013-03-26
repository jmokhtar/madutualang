class Customer < ActiveRecord::Base
  belongs_to :agent
  has_many :purchases
  
  attr_accessible :aktif, :alamat, :daerah, :nama, :negeri, :no_kp, :penyakit, :poskod, :tarikh_mula, :umur, :agent_id
end
