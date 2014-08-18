class Motorista < ActiveRecord::Base
  belongs_to :cnh
  usar_como_cpf :cpf
end
