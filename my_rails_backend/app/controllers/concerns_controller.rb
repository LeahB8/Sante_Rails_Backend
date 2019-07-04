class ConcernsController < ApplicationController

    def index
        concerns = Concern.all
        if concerns
            render json: concerns
          else
            render json: { error: "Concerns not found."}, status: 404
          end
    end
end
