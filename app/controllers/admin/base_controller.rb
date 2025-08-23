# app/controllers/admin/base_controller.rb
class Admin::BaseController < ApplicationController
  before_action :authenticate_admin!  # Devise helper to enforce login
  # layout "admin"        
  def dashboard
  end              # optional: use a separate layout
end
