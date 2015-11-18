class MainController < ApplicationController
  def index
    @physician_grid = initialize_grid(MedOffice)
    @medoffice = MedOffice.order(:name)

  end
end
