class TestcasesController < ApplicationController
  before_action :set_testcase, only: %i[ show edit update destroy ]

  # GET /testcases or /testcases.json
  def index
    @testcases = Testcase.all
  end

  # GET /testcases/1 or /testcases/1.json
  def show
    @testgroup = Testgroup.where(testcase: params[:id])
  end

  # GET /testcases/new
  def new
    @testcase = Testcase.new
  end

  # GET /testcases/1/edit
  def edit
  end

  # POST /testcases or /testcases.json
  def create
    @testcase = Testcase.new(testcase_params)

    respond_to do |format|
      if @testcase.save
        format.html { redirect_to testcase_url(@testcase), notice: "Testcase was successfully created." }
        format.json { render :show, status: :created, location: @testcase }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testcases/1 or /testcases/1.json
  def update
    respond_to do |format|
      if @testcase.update(testcase_params)
        format.html { redirect_to testcase_url(@testcase), notice: "Testcase was successfully updated." }
        format.json { render :show, status: :ok, location: @testcase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testcases/1 or /testcases/1.json
  def destroy
    @testcase.destroy

    respond_to do |format|
      format.html { redirect_to testcases_url, notice: "Testcase was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testcase
      @testcase = Testcase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testcase_params
      params.require(:testcase).permit(:title, :description, :authored, :email, :version)
    end
end
