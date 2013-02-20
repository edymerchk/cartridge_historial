class Historial < ActiveRecord::Base
  attr_accessible :cantidad_toner, :drum, :empresa, :fecha_devolucion, :fecha_fabricacion, :fecha_venta, :mag_roller, :motivo, :observaciones
  belongs_to :cartucho
end
# == Schema Information
#
# Table name: historials
#
#  id                :integer         not null, primary key
#  fecha_fabricacion :date
#  fecha_venta       :date
#  fecha_devolucion  :date
#  empresa           :string(255)
#  motivo            :string(255)
#  cantidad_toner    :integer
#  mag_roller        :string(255)
#  drum              :string(255)
#  observaciones     :text
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#  cartucho_id       :integer
#

