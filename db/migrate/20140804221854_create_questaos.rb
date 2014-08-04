class CreateQuestaos < ActiveRecord::Migration
  def change
    create_table :questaos do |t|
      t.string :titulo
      t.date :data
      t.string :status
      t.string :solucao
      t.references :pauta, index: true

      t.timestamps
    end
  end
end
