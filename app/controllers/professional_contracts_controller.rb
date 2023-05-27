class ProfessionalContractsController < ApplicationController
  before_action :set_professional_contract, only: %i[ show edit update destroy ]

  # GET /professional_contracts or /professional_contracts.json
  def index
    @professional_contracts = ProfessionalContract.all
  end

  # GET /professional_contracts/1 or /professional_contracts/1.json
  def show
  end

  # GET /professional_contracts/new
  def new
    @professional_contract = ProfessionalContract.new
  end

  # GET /professional_contracts/1/edit
  def edit
  end

  # POST /professional_contracts or /professional_contracts.json
  def create
    @professional_contract = ProfessionalContract.new(professional_contract_params)

    respond_to do |format|
      if @professional_contract.save
        format.html { redirect_to professional_contract_url(@professional_contract), notice: "Professional contract was successfully created." }
        format.json { render :show, status: :created, location: @professional_contract }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @professional_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professional_contracts/1 or /professional_contracts/1.json
  def update
    respond_to do |format|
      if @professional_contract.update(professional_contract_params)
        format.html { redirect_to professional_contract_url(@professional_contract), notice: "Professional contract was successfully updated." }
        format.json { render :show, status: :ok, location: @professional_contract }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @professional_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professional_contracts/1 or /professional_contracts/1.json
  def destroy
    @professional_contract.destroy

    respond_to do |format|
      format.html { redirect_to professional_contracts_url, notice: "Professional contract was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professional_contract
      @professional_contract = ProfessionalContract.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def professional_contract_params
      params.require(:professional_contract).permit(:user_id, :contract_time, :professional_profile_id)
    end
end
