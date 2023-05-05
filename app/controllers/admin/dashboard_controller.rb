class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with :name => ENV['ADMIN_USERNAME'] || "Jungle", :password => ENV['ADMIN_PASSKEY'] || "book"
  def show
  end
end
