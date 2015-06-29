class Outpost::HomeController < Outpost::BaseController
  def dashboard
    breadcrumb "Dashboard", outpost.root_path

  end
end