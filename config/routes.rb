Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# blogs
  get "/blogs", to:"blogs#getBlog"
  get "/blogs/:id", to:"blogs#getBlogid"
  post "/blogs", to: "blogs#postBlog"
  put "/blogs/:id", to: "blogs#updateBlog"
  delete "blogs/:id", to: "blogs#deleteBlog"


# user

get "/user", to:"user#getalluser"
get "/user/:id", to:"user#getuserid"
post "/user", to: "user#newuser"
#put "/user/:id", to: "user#updateBlog"


end
