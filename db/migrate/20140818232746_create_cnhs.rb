class CreateCnhs < ActiveRecord::Migration
  def change
    create_table :cnhs do |t|
      t.string :numero
      t.date :validade

      t.timestamps
    end
  end
end
