class IntentionsController < ApplicationController
  def new
    @intention = Intention.new
  end

  def create
    @intention = Intention.create(intention_params)
    if @intention.persisted?
      redirect_to @intention
    else
      render :new
    end
  end

  def show
    @intention = Intention.find(params[:id])
  end

  private

  def intention_params
    params.require(:intention).permit(:name, :interests, :address, :date,
                                 :email, :company, :position)
  end
end
