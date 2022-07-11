class BlogsController < ApplicationController

    protect_from_forgery with: :null_session
    def getBlog
        post0=Blog.all
        render json: post0
    end     
    
    def postBlog
        # puts(params[:title])
        # userId = params[:id]
        # puts("iddd", userId)
        # user = User.find(userId)
        # puts("usr", user)
        params[:image] = params[:image].to_json
        userId = params[:user_id]
        user = User.find(userId)
        post=Blog.create(params.permit(:title, :content, :image))
        post.user = user 
        post.save()
        render json: post
    end

    def getBlogid
        id=params[:id]
        post1=Blog.find(id)
        render json: post1
    end

    def updateBlog
        
        id=params[:id]
        post2=Blog.find(id).update(params.permit(:title, :content))
        render json: post2
    end
     def deleteBlog
        id=params[:id]
        post3=Blog.destroy(id)
        render json: post3
     end

end