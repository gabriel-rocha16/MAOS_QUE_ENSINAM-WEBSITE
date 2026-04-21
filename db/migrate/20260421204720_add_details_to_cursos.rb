class AddDetailsToCursos < ActiveRecord::Migration[8.1]
  def change
    add_column :cursos, :titulo, :string
    add_column :cursos, :descricao, :text
    add_column :cursos, :video_url, :string
    add_column :cursos, :status, :integer, default: 0
    change_column_null :cursos, :instrutor_id, true
  end
end
