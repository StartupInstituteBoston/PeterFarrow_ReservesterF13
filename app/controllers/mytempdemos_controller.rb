class MytempdemosController < ApplicationController
  before_action :set_mytempdemo, only: [:show, :edit, :update, :destroy]

  # GET /mytempdemos
  # GET /mytempdemos.json
  def index
    @mytempdemos = Mytempdemo.all
  end

  # GET /mytempdemos/1
  # GET /mytempdemos/1.json
  def show
  end

  # GET /mytempdemos/new
  def new
    @mytempdemo = Mytempdemo.new
  end

  # GET /mytempdemos/1/edit
  def edit
  end

  # POST /mytempdemos
  # POST /mytempdemos.json
  def create
    @mytempdemo = Mytempdemo.new(mytempdemo_params)

    respond_to do |format|
      if @mytempdemo.save
        format.html { redirect_to @mytempdemo, notice: 'Mytempdemo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mytempdemo }
      else
        format.html { render action: 'new' }
        format.json { render json: @mytempdemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mytempdemos/1
  # PATCH/PUT /mytempdemos/1.json
  def update
    respond_to do |format|
      if @mytempdemo.update(mytempdemo_params)
        format.html { redirect_to @mytempdemo, notice: 'Mytempdemo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mytempdemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mytempdemos/1
  # DELETE /mytempdemos/1.json
  def destroy
    @mytempdemo.destroy
    respond_to do |format|
      format.html { redirect_to mytempdemos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mytempdemo
      @mytempdemo = Mytempdemo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mytempdemo_params
      params.require(:mytempdemo).permit(:name, :content)
    end
end
