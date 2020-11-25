# class AdminsController < ApplicationController
#     def index
#         render params
#     end

#     def show
#         token = request.headers["Authentication"].split(" ")[1]

#         render json: Admin.find(decode(token)["admin_id"]), status: :accepted
#     end

#     def create
#         @user = Admin.new(username: params["username"], 
#                     password: params["password"], 

#         if @user.save 
#             token = encode("admin_id": @user.id)
#             render json: {
#                 authenticated: true,
#                 message: "You're logged in",
#                 token: token,
#                 user: @user,
#             }, status: :accepted
#         end
#     end

#     def process_login
#         byebug
#         admin = Admin.find_by(username: params["username"])
#         if admin && admin.authenticate(params["password"])
#             render json: admin
#         else
#             print "You're not ok and out"
#         end

#         #render json: Item.find(params["id"]).to_json()
#     end
# end
