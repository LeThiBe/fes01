class AdminController < ApplicationController
  layout "admin/application"
  before_action :logged_in_user, :admin_user

  include Admin::ExcercisesHelper
  include ExcercisesHelper
end
