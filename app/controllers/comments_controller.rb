# frozen_string_literal: true

class CommentsController < ApplicationController
  def destroy
    @comment = current_user.comments.find(params[:id])
    @commentable = @comment.commentable
    @comment.destroy
  end
end
