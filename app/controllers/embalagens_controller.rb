class EmbalagensController < ApplicationController
  before_action :set_embalagem, only: %i[ show edit update destroy ]
  
  # Usando o layout dashboard
  layout 'dashboard'
  
  # GET /embalagens or /embalagens.json
  def index
    @embalagens = Embalagem.all
  end

  # GET /embalagens/1 or /embalagens/1.json
  def show
  end

  # GET /embalagens/new
  def new
    @embalagem = Embalagem.new
  end

  # GET /embalagens/1/edit
  def edit
  end

  # POST /embalagens or /embalagens.json
  def create
    @embalagem = Embalagem.new(embalagem_params)

    respond_to do |format|
      if @embalagem.save
        format.html { redirect_to @embalagem, notice: "Embalagem was successfully created." }
        format.json { render :show, status: :created, location: @embalagem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @embalagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /embalagens/1 or /embalagens/1.json
  def update
    respond_to do |format|
      if @embalagem.update(embalagem_params)
        format.html { redirect_to @embalagem, notice: "Embalagem was successfully updated." }
        format.json { render :show, status: :ok, location: @embalagem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @embalagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /embalagens/1 or /embalagens/1.json
  def destroy
    @embalagem.destroy!

    respond_to do |format|
      format.html { redirect_to embalagens_path, status: :see_other, notice: "Embalagem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_embalagem
      @embalagem = Embalagem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def embalagem_params
      params.require(:embalagem).permit(:nome)
    end
end
