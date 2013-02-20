class Cartucho < ActiveRecord::Base
  attr_accessible :codigo, :estado, :fecha_ing, :referencia
  has_many :historials
end
# == Schema Information
#
# Table name: cartuchos
#
#  id         :integer         not null, primary key
#  codigo     :string(255)
#  referencia :string(255)
#  fecha_ing  :date
#  estado     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

