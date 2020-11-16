class InstallmentsController < ApplicationController
  # GET /installments/new
  def new
    @installment = Installment.new
  end

  # POST /installments
  def create
    @installment = Installment.new(installment_params)

    respond_to do |format|
      if @installment.save
        format.html { redirect_to @installment, notice: 'Installment was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_installment
      @installment = Installment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def installment_params
      params.require(:installment).permit(:amount, :deadline, :loan_id)
    end
end
