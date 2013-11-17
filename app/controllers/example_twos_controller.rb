class ExampleTwosController < ApplicationController
  before_action :set_example_two, only: [:show, :edit, :update, :destroy]

  # GET /example_twos
  # GET /example_twos.json
  def index
    @example_twos = ExampleTwo.all
  end

  # GET /example_twos/1
  # GET /example_twos/1.json
  def show
  end

  # GET /example_twos/new
  def new
    @example_two = ExampleTwo.new
  end

  # GET /example_twos/1/edit
  def edit
  end

  # POST /example_twos
  # POST /example_twos.json
  def create
    @example_two = ExampleTwo.new(example_two_params)

    respond_to do |format|
      if @example_two.save
        format.html { redirect_to @example_two, notice: 'Example two was successfully created.' }
        format.json { render action: 'show', status: :created, location: @example_two }
      else
        format.html { render action: 'new' }
        format.json { render json: @example_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /example_twos/1
  # PATCH/PUT /example_twos/1.json
  def update
    respond_to do |format|
      if @example_two.update(example_two_params)
        format.html { redirect_to @example_two, notice: 'Example two was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @example_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /example_twos/1
  # DELETE /example_twos/1.json
  def destroy
    @example_two.destroy
    respond_to do |format|
      format.html { redirect_to example_twos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_example_two
      @example_two = ExampleTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def example_two_params
      params.require(:example_two).permit(:name, :description)
    end
end
