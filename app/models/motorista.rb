class Motorista < ActiveRecord::Base

  validates :nome, presence: true
  validates :cpf, presence: true, uniqueness: true, cpf: true
  validates :rg, presence: true, uniqueness: true
  validates :cnh, presence: true, uniqueness: true

  belongs_to :cnh
  has_many :motorista_veiculos
  has_many :veiculos, :through => :motorista_veiculos
end
