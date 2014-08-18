class MotoristaVeiculo < ActiveRecord::Base
  belongs_to :motorista
  belongs_to :veiculo
end
