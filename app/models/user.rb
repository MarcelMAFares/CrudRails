class User < ApplicationRecord
  belongs_to :genero
  has_many :contatos, dependent: :destroy

  accepts_nested_attributes_for :contatos, reject_if: :all_blank, allow_destroy: true
  
  validates :nome, :idade, :cpf, :genero, :contatos, presence:true
  validates_length_of :cpf, is: 14
  validates :cpf, uniqueness: true
  validates_numericality_of :idade, minimum: 0, maximum: 130
end