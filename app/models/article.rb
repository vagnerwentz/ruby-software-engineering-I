class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy
  
  validates :title, presence: { :allow_blank => false, :message => "Não pode estar em branco."  }
  validates :body, presence: { :allow_blank => false, :message => "Não pode estar em branco."  }, length: { minimum: 10, :message => 'A descrição deve conter mais que 10 palavras' }
end
