class CommentsController < ApplicationController

	def create
		photo = Photo.find(params[:photo_id])
		comment = current_user.comments.new(comment_params)
		comment.photo_id = photo.id
		comment.save
		redirect_to photo_path(photo)
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def update
		@comment = Comment.find(params[:id])
		photo = Photo.find(params[:photo_id])
		@comment.update(comment_params)
		redirect_to photo_path(photo.id)
	end

	def destroy
		comment = Comment.find(params[:id])
		photo = Photo.find(params[:id])
		comment.destroy
		redirect_to photo_path(photo.id)
	end

	private
	def comment_params
		params.require(:comment).permit(:comment)
	end
end
