class Matricula < ApplicationRecord
  belongs_to :candidato
  belongs_to :curso
end
