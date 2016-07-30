class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         
         #Ajudar a achar os posts específicos de um usuários.
       #  has_many :posts, dependent: :destroy# Se um usuário for removido seus posts serão deletados
        # has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: destroy
       #  has_many :following, through: :active_ralationships, source: followed
         
      #   def follow(other)
         #  active_ralationships
end
