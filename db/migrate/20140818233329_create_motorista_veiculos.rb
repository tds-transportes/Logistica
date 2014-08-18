class CreateMotoristaVeiculos < ActiveRecord::Migration
  def change
    create_table :motorista_veiculos do |t|
      t.references :motorista, index: true
      t.references :veiculo, index: true
      t.boolean :ativo

      t.timestamps
    end
  end
end
