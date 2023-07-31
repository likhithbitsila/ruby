class LikisController < ApplicationController
  before_action :set_liki, only: %i[ show edit update destroy ]

  # GET /likis or /likis.json
  def index
    @likis = Liki.all
  end

  # GET /likis/1 or /likis/1.json
  def show
  end

  # GET /likis/new
  def new
    @liki = Liki.new
  end

  # GET /likis/1/edit
  def edit
  end

  # POST /likis or /likis.json
  def create
    @liki = Liki.new(liki_params)

    respond_to do |format|
      if @liki.save
        format.html { redirect_to liki_url(@liki), notice: "Liki was successfully created." }
        format.json { render :show, status: :created, location: @liki }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @liki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /likis/1 or /likis/1.json
  def update
    respond_to do |format|
      if @liki.update(liki_params)
        format.html { redirect_to liki_url(@liki), notice: "Liki was successfully updated." }
        format.json { render :show, status: :ok, location: @liki }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @liki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /likis/1 or /likis/1.json
  def destroy
    @liki.destroy

    respond_to do |format|
      format.html { redirect_to likis_url, notice: "Liki was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liki
      @liki = Liki.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def liki_params
      params.require(:liki).permit(:title, :body)
    end
end
