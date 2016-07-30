class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|

    t.integer :follower_id
    t.integer :followed_id
    
      t.timestamps null: false
    end
    
    add_index :relationships, :follower_id
    add_index :relationships, :followed_id
   #Indice Compostos Evita que um usuário siga a mesma pessoa várias vezes
    add_index :relationships, [:follower_id, :followed_id],unique:true 
  end
end
