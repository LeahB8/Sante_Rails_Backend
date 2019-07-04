class RemediesController < ApplicationController

    def show
        remedy = Remedy.find_by(id: params[:id])
        if remedy
          render json: remedy
        else
          render json: { error: "Remedy not found."}, status: 404
        end
      end
end
