class UsersController < InheritedResources::Base
  def create
    create! do |success, failure|
      success.html { redirect_to new_user_path, notice: true }
    end
  end

  private

  def permitted_params
    params.permit(user: [:first_name, :last_name, :email, :phone])
  end
end
