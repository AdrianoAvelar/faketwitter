class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum:140 } #140 caracteres é o tamanho máximos dos tweets.
  #default_scope { order(created_at :desc) } #Posts mais recentes vem primeiro
  default_scope -> { order(:created_at => :desc) }
  
end

