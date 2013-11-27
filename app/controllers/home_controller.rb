class HomeController < ApplicationController
  def index
  	activities = PublicActivity::Activity.all
  	@code_fillets = CodeFillet.all
  end
end
