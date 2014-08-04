class CreateAta < ActiveRecord::Migration
  def change
    create_table :ata do |t|
      t.string :titulo
      t.string :status
      t.date :data
      t.string :hora
      t.string :atafinal

      t.timestamps
    end
  end
end
