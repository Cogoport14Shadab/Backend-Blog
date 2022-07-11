class UserController < ApplicationController

    protect_from_forgery with: :null_session
    def getalluser
        puts("okkkkkk")
        user=User.all
        render json: user
    end     
    
    def newuser
        # puts(params[:title])
      user=User.create(params.permit(:name, :email, :password))
      render json: user
    end

    def getuserid     
        puts("nottt")
        id=params[:id]
        post1=User.find(id)
        render json: post1
    end

   

end