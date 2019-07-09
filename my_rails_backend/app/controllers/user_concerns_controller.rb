class UserConcernsController < ApplicationController

    def index
        userConcerns = UserConcern.all
        render json: userConcerns
      end

      def create
        userConcern = UserConcern.create(user_id: params[:user_id], concern_id: params[:concern_id])
        render json: userConcern
      end

      def destroy
        concern = UserConcern.find_by(concern_id: params[:id])
        concern.destroy
      end

      def show
        userConcern = UserConcern.find_by(id: params[:id])
        render json: userConcern
      end
    
end
