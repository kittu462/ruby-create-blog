class DiscussionsController < ApplicationController
	def create
    @post = Post.find(params[:post_id])
    @discussion = @post.discussions.create(discussion_params)
    redirect_to post_path(@post)
  end
 
  def destroy
    @post = Post.find(params[:post_id])
    @discussion = @post.discussions.find(params[:id])
    @discussion.destroy
    redirect_to post_path(@post)
  end
  private
    def discussion_params
      params.require(:discussion).permit(:commenter, :body)
    end
end
