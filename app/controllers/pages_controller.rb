#Contém todo o código de qualquer página dentro de /views/pages
class PagesController < ApplicationController
  
  #Código back-end para /view/pages/index
  def index
  end

 #Código back-end para /view/pages/home
  def home
    @posts = Post.all
  end

 #Código back-end para /view/pages/profile
  def profile
    #grab the username from the url as :id
    if(User.find_by_username(params[:id]))
     @username = params[:id]
    else
     redirect_to root_path, :notice => "User not found!"
    end
    
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
    
    @newPost = Post.new
  end

 #Código back-end para /view/pages/explore
  def explore
   @posts = Post.all
  end
end
