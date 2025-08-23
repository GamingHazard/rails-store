# app/controllers/admin/base_controller.rb
class Admin::BaseController < ApplicationController
  before_action :authenticate_admin!  # Devise helper to enforce login
  layout "admin"               # optional: use a separate layout
               # optional: use a separate layout
end
