class Movimentacao < ApplicationRecord
  belongs_to :cliente
  belongs_to :qualidade
  belongs_to :embalagem
end
