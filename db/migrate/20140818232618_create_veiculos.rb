class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.references :modelo, index: true
      t.string :placa

      t.timestamps
    end
  end
end
