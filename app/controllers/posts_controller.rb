class PostsController < ApplicationController

	http_basic_authenticate_with name: "mobydick", password: "bananas", except: [:index, :show]

	def index
		@posts = Post.all.reverse
	end

	def show
		@post = Post.find(params[:id])
	end
	
	def new
		@post = Post.new
	end

	def edit
		@post = Post.find(params[:id])
	end

	def create
		@post = Post.new(post_params)
		@post.date = Date.today

		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	def update
		@post = Post.find(params[:id])
		@post.date = Date.today

		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to posts_path
	end


	private
		def post_params
			params.require(:post).permit(:title, :subtitle, :preview, :date)
		end

end