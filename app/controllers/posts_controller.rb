
class PostsController < ApplicationController
  protect_from_forgery :except => :check1
  def index
      @posts = Post.all
  end

  def new
  end
  
  def create
      @post = Post.new
      @post.title = params[:input_title]
      @post.username = params[:input_username]
      @post.question1 = params[:input_question1]
      @post.question2 = params[:input_question2]
      @post.question3 = params[:input_question3]
      @post.answer1 = params[:input_answer1]
      @post.answer2 = params[:input_answer2]
      @post.answer3 = params[:input_answer3]
      @post.hint1 = params[:input_hint1]
      @post.hint2 = params[:input_hint2]
      @post.hint3 = params[:input_hint3]
      @post.save

      redirect_to "/posts/index"
  end
  
  def check1
    @post = Post.find(params[:post_id])
    @userinput1 = params[:enter_answer1]
    
    if @post.answer1 == @userinput1
      redirect_to "/posts/show2/#{params[:post_id]}"
      
    else
      redirect_to "/posts/wrong1/#{params[:post_id]}"
    end
  end
  
  def check2
    @post = Post.find(params[:post_id])
    @userinput2 = params[:enter_answer2]
    
    if @post.answer2 == @userinput2
      redirect_to "/posts/show3/#{params[:post_id]}"
    else
      redirect_to "/posts/wrong2/#{params[:post_id]}"
    end
  end
  
  def check3
    @post = Post.find(params[:post_id])
    @userinput3 = params[:enter_answer3]
    
    if @post.answer3 == @userinput3
      redirect_to "/posts/finish/#{params[:post_id]}"
    else
      redirect_to "/posts/wrong3/#{params[:post_id]}"
    end
  end
  
  def show1
    @post = Post.find(params[:post_id])
  end

  def show2
    @post = Post.find(params[:post_id])
  end
  
  def show3
    @post = Post.find(params[:post_id])
  end
  
  def finish
    @post = Post.find(params[:post_id])
    @comments = Comment.where(:post_id => params[:post_id])
  end
  

  def update
      @post = Post.find(params[:post_id])
      @post.title = params[:edit_title]
      @post.content = params[:edit_content]
      @post.save

      redirect_to "/"
  end

  def destroy
      @post = Post.find(params[:post_id])
      @post.destroy

      redirect_to "/"
  end
  
  def wrong1
    @post = Post.find(params[:post_id])
  end
  
  def wrong2
    @post = Post.find(params[:post_id])
  end
  
  def wrong3
    @post = Post.find(params[:post_id])
  end

end
