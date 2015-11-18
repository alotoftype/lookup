class MedOfficesController < ApplicationController
  before_action :set_med_office, only: [:show, :edit, :update, :destroy]

  # GET /med_offices
  # GET /med_offices.json
  def index
    @med_offices = MedOffice.all
    @physician_grid = initialize_grid(MedOffice)
  end

  # GET /med_offices/1
  # GET /med_offices/1.json
  def show
  end

  # GET /med_offices/new
  def new
    @med_office = MedOffice.new
  end

  # GET /med_offices/1/edit
  def edit
  end

  # POST /med_offices
  # POST /med_offices.json
  def create
    @med_office = MedOffice.new(med_office_params)

    respond_to do |format|
      if @med_office.save
        format.html { redirect_to @med_office, notice: 'Med office was successfully created.' }
        format.json { render :show, status: :created, location: @med_office }
      else
        format.html { render :new }
        format.json { render json: @med_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /med_offices/1
  # PATCH/PUT /med_offices/1.json
  def update
    respond_to do |format|
      if @med_office.update(med_office_params)
        format.html { redirect_to @med_office, notice: 'Med office was successfully updated.' }
        format.json { render :show, status: :ok, location: @med_office }
      else
        format.html { render :edit }
        format.json { render json: @med_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /med_offices/1
  # DELETE /med_offices/1.json
  def destroy
    @med_office.destroy
    respond_to do |format|
      format.html { redirect_to med_offices_url, notice: 'Med office was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_med_office
      @med_office = MedOffice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def med_office_params
      params.require(:med_office).permit(:region, :name, :address, :parking, :hours, :cross_street, :landmark, :fax, :urgent, :routine)
    end
end
