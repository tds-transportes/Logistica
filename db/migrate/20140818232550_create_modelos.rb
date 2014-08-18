class CreateModelos < ActiveRecord::Migration
  def change
    create_table :modelos do |t|
      t.string :nome
      t.references :marca, index: true

      t.timestamps
    end
  end
end
