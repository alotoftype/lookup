class MainController < ApplicationController
  def index
    @physician_grid = initialize_grid(MedOffice)
    @medoffice = MedOffice.all
    @med_search =MedOffice.search(params.fetch(:s,"*"))
  end
end
