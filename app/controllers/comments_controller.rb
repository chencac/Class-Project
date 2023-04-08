class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_resume, only: [:create]
  before_action :find_comment, only:[:edit ,:update,:destroy]
  def create 
    @comment = @resume.comments.new(comment_params)
    authorize(@comment)
    if @comment.save 
      redirect_to resume_path(@resume), notice: '成功'
    else
        @comments = @resume.comments.where(user:current_user).order(create_at: :desc)
    end
  end

  def edit
   
  end

  def update
    if @comment.update(comment_params)
      redirect_to @comment.resume, notice: "更新成功"
    else
      render :edit
    end
  end

  def destroy 
    authorize(@comment)

    @comment.destroy
   
  end

  private 
  def find_comment  
   @comment = current_user.comments.find(params[:id])
  end
  def find_resume
    @resume = Resume.find(params[:resume_id])
  end

  def comment_params 
    params.require(:comment).permit(:content).merge(user: current_user)
  end
end
