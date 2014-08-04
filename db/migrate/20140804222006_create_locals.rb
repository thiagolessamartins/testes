class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :uf
      t.string :cidade
      t.string :endereco
      t.string :complemento
      t.string :status

      t.timestamps
    end
  end
end
