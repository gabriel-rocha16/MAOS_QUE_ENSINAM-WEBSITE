class CreateMatriculas < ActiveRecord::Migration[8.1]
  def change
    create_table :matriculas do |t|
      t.references :candidato, null: false, foreign_key: true
      t.references :curso, null: false, foreign_key: true
      t.boolean :concluido, default: false

      t.timestamps
    end
  end
end
