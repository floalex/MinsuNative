module Authenticate
  def current_user
    @current_user = User.find_by(access_token: params[:access_token])
  end
  
  def authenticate_with_token!
    # render error message if no current user
    if !current_user.present?
      render json: { error: "Not Authenticate", is_success: false }, status: :unauthorized unless current_user.present
    end
  end
end