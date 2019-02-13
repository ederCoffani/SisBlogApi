class Report < ApplicationRecord
  belongs_to :user
  belongs_to :comment

  #scope para buscar os commentarios denunciados
  scope :toreport, -> {
    where(toreport: true)
   }

  #scope para ordenar os denucias por comentarios
   scope :ordered_by_comment, -> {
     order(comment_id: :asc)
   }
end
