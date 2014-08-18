class CreateTransportadoras < ActiveRecord::Migration
  def change
    create_table :transportadoras do |t|
      t.string :nome
      t.string :cnpj
      t.string :nome_fantasia
      t.string :inscricao_estadual

      t.timestamps
    end
  end
end
