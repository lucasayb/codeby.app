class CustomerProfilesController < ApplicationController
  before_action :set_customer_profile, only: %i[ show edit update destroy ]

  # GET /customer_profiles or /customer_profiles.json
  def index
    @customer_profiles = CustomerProfile.all
  end

  # GET /customer_profiles/1 or /customer_profiles/1.json
  def show
  end

  # GET /customer_profiles/new
  def new
    @customer_profile = CustomerProfile.new
  end

  # GET /customer_profiles/1/edit
  def edit
  end

  # POST /customer_profiles or /customer_profiles.json
  def create
    @customer_profile = CustomerProfile.new(customer_profile_params)

    respond_to do |format|
      if @customer_profile.save
        format.html { redirect_to customer_profile_url(@customer_profile), notice: "Customer profile was successfully created." }
        format.json { render :show, status: :created, location: @customer_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_profiles/1 or /customer_profiles/1.json
  def update
    respond_to do |format|
      if @customer_profile.update(customer_profile_params)
        format.html { redirect_to customer_profile_url(@customer_profile), notice: "Customer profile was successfully updated." }
        format.json { render :show, status: :ok, location: @customer_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_profiles/1 or /customer_profiles/1.json
  def destroy
    @customer_profile.destroy

    respond_to do |format|
      format.html { redirect_to customer_profiles_url, notice: "Customer profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_profile
      @customer_profile = CustomerProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_profile_params
      params.require(:customer_profile).permit(:user_id, :name)
    end
end
