class App::CommentsController < AppController
  def index
    redirect_to app_path
  end

  def create
    comment = Comment.new(params[:comment])

    respond_to do |format|
      if comment.save
        format.js
      else
        flash[:error] = "Your comment cannot be saved."
        redirect_to "/app/projects/#{params[:project_id]}"
      end
    end
  end

end
