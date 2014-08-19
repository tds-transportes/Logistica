class Veiculo < ActiveRecord::Base

  validates :placa, format: {with: /[A-Z]{3}\d{4}/i, on: :create}, length: {is: 7}, uniqueness: true, presence: true

  belongs_to :modelo
  has_many :motorista_veiculos
  has_many :motorista, :through => :motorista_veiculos
end
