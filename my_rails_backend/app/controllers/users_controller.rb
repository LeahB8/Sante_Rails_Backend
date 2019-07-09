class UsersController < ApplicationController
    def show
      user = User.find_by(id: params[:id])
      if user
        render json: user, include: [:concerns]
      else
        render json: { error: "User not found."}, status: 404
      end
    end

    def update
        user = User.find_by(id: params[:id])
        if user
            user.update(firstName: params[:firstName], weight: params[:weight], height: params[:height], age: params[:age], goals: params[:goals])
        else
            render json: { error: "User not found."}, status: 404
        end
    end
  
    def signin
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: { user: user, user_concerns: user.concerns, token: issue_token({ id: user.id }) }
      else
        render json: { error: 'Invalid username/password combination.' }, status: 401
      end
    end
  
    def validate
      user = current_user
      if user
        render json: { user: user, user_concerns: user.concerns, token: issue_token({ id: user.id }) }
      else
        render json: { error: 'User not found.' }, status: 404
      end
    end
  
    def concerns
      user = current_user
      if user
        render json: user.concerns
      else
        render json: { error: 'Invalid token.' }, status: 400
      end
    end

  def signup
      user = User.new(username: params[:username], password: params[:password])
      if user.valid?
         user.save
        render json: user
      else
        render json: { error: 'Username already taken' }, status: 404
      end
  end

  def user_params
    params.require[:user]
  end


end