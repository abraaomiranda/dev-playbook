class AditivosPrazoController < ApplicationController

  before_action :authenticate

  def index
    load_contrato
    @aditivos_prazo = @contrato.aditivos_prazo
    respond_to do |format|
      format.js
    end
  end

  def create
    load_contrato
    @aditivo_prazo = @contrato.aditivos_prazo.build(aditivo_prazo_params)
    if @aditivo_prazo.save
      redirect_to contrato_path(@contrato), notice: 'Aditivo de prazo cadastrado com sucesso'
    else
      redirect_to contrato_path(@contrato), alert: 'Não foi possível cadastrar o aditivo'
    end
  end

  def edit
    load_contrato
    load_aditivo
  end


  def update

    load_contrato
    load_aditivo
    if @aditivo_prazo.update_attributes(aditivo_prazo_params)
      redirect_to contrato_path(@contrato), notice: 'Aditivo de prazo atualizado com sucesso'
    else
      flash.now[:alert] = 'Não foi possível atualizar o aditivo de prazo'
      render :edit
    end
  end


  def destroy
    load_aditivo
    @aditivo_prazo.destroy
    redirect_to contrato_path(params[:contrato_id]), notice: 'Aditivo de prazo removido.'
  end

  private

  def aditivo_prazo_params
    params.require(:aditivo_prazo).
        permit(
            :prazo,
            :data,
            :fiscal_id
        )
  end

  def load_contrato
    @contrato = Contrato.find(params[:contrato_id])
  end

  def load_aditivo
    @aditivo_prazo = AditivoPrazo.find(params[:id])
  end

end


