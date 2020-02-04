class MebratListsController < ApplicationController
  before_action :set_mebrat_list, only: [:show, :edit, :update, :destroy]

  # GET /mebrat_lists
  # GET /mebrat_lists.json
  def index
    @mebrat_lists = MebratList.all
  end

  # GET /mebrat_lists/1
  # GET /mebrat_lists/1.json
  def show
  end

  # GET /mebrat_lists/new
  def new
    @mebrat_list = MebratList.new
  end

  # GET /mebrat_lists/1/edit
  def edit
  end

  # POST /mebrat_lists
  # POST /mebrat_lists.json
  def create
    @mebrat_list = MebratList.new(mebrat_list_params)

    respond_to do |format|
      if @mebrat_list.save
        format.html { redirect_to @mebrat_list, notice: 'Mebrat list was successfully created.' }
        format.json { render :show, status: :created, location: @mebrat_list }
      else
        format.html { render :new }
        format.json { render json: @mebrat_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mebrat_lists/1
  # PATCH/PUT /mebrat_lists/1.json
  def update
    respond_to do |format|
      if @mebrat_list.update(mebrat_list_params)
        format.html { redirect_to @mebrat_list, notice: 'Mebrat list was successfully updated.' }
        format.json { render :show, status: :ok, location: @mebrat_list }
      else
        format.html { render :edit }
        format.json { render json: @mebrat_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mebrat_lists/1
  # DELETE /mebrat_lists/1.json
  def destroy
    @mebrat_list.destroy
    respond_to do |format|
      format.html { redirect_to mebrat_lists_url, notice: 'Mebrat list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mebrat_list
      @mebrat_list = MebratList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mebrat_list_params
      params.require(:mebrat_list).permit(:title, :description)
    end
end
