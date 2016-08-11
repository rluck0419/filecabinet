class PermissionsController < ApplicationController
  before_action :require_login

  def new
    render locals: { permission: Permission.new }
  end

  def create
    permission = Permission.new(permission_params)
    unless permission.save
      flash[:alert] = permission.errors.full_messages[0]
    end
    redirect_to :back
  end

  def destroy
    permission = Permission.find(params[:id])
    if has_permission?(permission.permission)
        permission.destroy #delete permission given by someone else
        flash[:notice] = "This user no longer has extra permissions."
        redirect_to :back
    else
      flash[:alert] = "You cannot delete this permission."
      redirect_to :back
    end
  end
end

private
def permission_params
  params.require(:permission).permit(:permission_id, :permission_type, :full_access, :user_id)
end

def has_permission?(object)
  object.user_id == current_user.id || current_user.admin?
end
