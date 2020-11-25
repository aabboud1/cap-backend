class AdminsController < ApplicationController
    def index
        render params
    end

    def show
        token = request.headers["Authentication"].split(" ")[1]

        render json: Admin.find(decode(token)["admin_id"]), status: :accepted
    end

    def process_login
        admin = Admin.find_by(username: params["username"])
        if admin && admin.authenticate(params["password"])
            render json: admin
        else
            print "You're not ok and out"
        end

        #render json: Item.find(params["id"]).to_json()
    end
end
