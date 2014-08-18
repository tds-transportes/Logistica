# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :motoristum, :class => 'Motorista' do
    nome "MyString"
    cpf "MyString"
    rg "MyString"
    cnh nil
  end
end
