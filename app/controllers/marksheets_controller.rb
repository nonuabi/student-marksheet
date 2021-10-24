class MarksheetsController < ApplicationController
  before_action :set_marksheet, only: %i[ show edit update destroy ]

  # GET /marksheets or /marksheets.json
  def index
    @marksheets = Marksheet.all
  end

  # GET /marksheets/1 or /marksheets/1.json
  def show
  end

  # GET /marksheets/new
  def new
    @marksheet = Marksheet.new
  end

  # GET /marksheets/1/edit
  def edit
  end

  # POST /marksheets or /marksheets.json
  def create
    @marksheet = Marksheet.new(marksheet_params)

    respond_to do |format|
      if @marksheet.save
        format.html { redirect_to @marksheet, notice: "Marksheet was successfully created." }
        format.json { render :show, status: :created, location: @marksheet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @marksheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marksheets/1 or /marksheets/1.json
  def update
    respond_to do |format|
      if @marksheet.update(marksheet_params)
        format.html { redirect_to @marksheet, notice: "Marksheet was successfully updated." }
        format.json { render :show, status: :ok, location: @marksheet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @marksheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marksheets/1 or /marksheets/1.json
  def destroy
    @marksheet.destroy
    respond_to do |format|
      format.html { redirect_to marksheets_url, notice: "Marksheet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marksheet
      @marksheet = Marksheet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def marksheet_params
      params.require(:marksheet).permit(:name, :subject_one, :subject_two, :subject_three, :subject_four, :subject_five)
    end
end
