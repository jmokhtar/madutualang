class Purchase < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :agent_id, :customer_id, :kuantiti, :produk, :tarikh_belian
end
