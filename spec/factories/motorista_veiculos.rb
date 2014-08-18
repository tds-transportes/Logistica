# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :motorista_veiculo do
    motorista nil
    veiculo nil
    ativo false
  end
end
