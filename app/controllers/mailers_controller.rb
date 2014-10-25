class MailersController < ApplicationController
  before_action :set_mailer, only: [:show, :edit, :update, :destroy]

  # GET /mailers
  # GET /mailers.json
  def index
    @mailers = Mailer.all
  end

  # GET /mailers/1
  # GET /mailers/1.json
  def show
  end

  # GET /mailers/new
  def new
    @mailer = Mailer.new
  end

  # GET /mailers/1/edit
  def edit
  end

  # POST /mailers
  # POST /mailers.json
  def create
    @mailer = Mailer.new(mailer_params)

    respond_to do |format|
      if @mailer.save
        format.html { redirect_to @mailer, notice: 'Mailer was successfully created.' }
        format.json { render :show, status: :created, location: @mailer }
      else
        format.html { render :new }
        format.json { render json: @mailer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mailers/1
  # PATCH/PUT /mailers/1.json
  def update
    respond_to do |format|
      if @mailer.update(mailer_params)
        format.html { redirect_to @mailer, notice: 'Mailer was successfully updated.' }
        format.json { render :show, status: :ok, location: @mailer }
      else
        format.html { render :edit }
        format.json { render json: @mailer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mailers/1
  # DELETE /mailers/1.json
  def destroy
    @mailer.destroy
    respond_to do |format|
      format.html { redirect_to mailers_url, notice: 'Mailer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mailer
      @mailer = Mailer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mailer_params
      params[:mailer]
    end
end
