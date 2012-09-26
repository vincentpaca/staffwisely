class RegistrationsController < Devise::RegistrationsController
  protected

  def after_inactive_sign_up_path_for(resource)
    "/app/company/new"
  end

  def after_sign_up_path_for(resource)
    "/app/company/new"
  end

  def disallow_access
    redirect_to root_url if Rails.env.production?
  end
end
