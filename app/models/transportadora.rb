class Transportadora < ActiveRecord::Base
  validates :nome, presence: true
  validates :cnpj, presence: true, uniqueness: true, cnpj: true
  validates :inscricao_estadual, presence: true, uniqueness: true

end
