module Api
  class RegistrationsController < Devise::RegistrationsController
    skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }
    respond_to :json
    def create
      user = User.new(user_params)
      if user.save
        render :json=> {:token=>user.authentication_token, :phonenumber=>user.phonenumber}, :status=>201
        return
      else
        warden.custom_failure!
        render :json=> user.errors, :status=>422
      end
    end

    private
    # Using a private method to encapsulate the permissible parameters
    # is just a good pattern since you'll be able to reuse the same
    # permit list between create and update. Also, you can specialize
    # this method with per-user checking of permissible attributes.
    def user_params
      params.require(:user).permit(:phonenumber, :password, :password_confirmation)
    end
  end
end