class TestgroupsController < ApplicationController
  before_action :set_testgroup, only: %i[ show edit update destroy ]
  #before_action :authenticate_user!

  # GET /testgroups or /testgroups.json
  def index
    @testgroups = Testgroup.all
    @pagy, @testgroups = pagy(Testgroup.all)
  end

  # GET /testgroups/1 or /testgroups/1.json
  def show
    @results = Testresult.where(testgroup: params[:id])
  end

  # GET /testgroups/new
  def new
    @testgroup = Testgroup.new
  end

  # GET /testgroups/1/edit
  def edit
  end

  # POST /testgroups or /testgroups.json
  def create
    @testgroup = Testgroup.new(testgroup_params)

    respond_to do |format|
      if @testgroup.save
        format.html { redirect_to testgroup_url(@testgroup), notice: "Testgroup was successfully created." }
        format.json { render :show, status: :created, location: @testgroup }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testgroups/1 or /testgroups/1.json
  def update
    respond_to do |format|
      if @testgroup.update(testgroup_params)
        format.html { redirect_to testgroup_url(@testgroup), notice: "Testgroup was successfully updated." }
        format.json { render :show, status: :ok, location: @testgroup }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testgroups/1 or /testgroups/1.json
  def destroy
    @testgroup.destroy

    respond_to do |format|
      format.html { redirect_to testgroups_url, notice: "Testgroup was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testgroup
      @testgroup = Testgroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testgroup_params
      params.require(:testgroup).permit(:title, :description, :case, :steps ,:testcase_id)
    end
end
