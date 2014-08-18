class CreateMotorista < ActiveRecord::Migration
  def change
    create_table :motorista do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.references :cnh, index: true

      t.timestamps
    end
  end
end
