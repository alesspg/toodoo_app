class ToodooItemsController < ApplicationController
  before_action :set_toodoo_item, only: [:show, :edit, :update, :destroy]

  # GET /toodoo_items
  # GET /toodoo_items.json
  def index
    @toodoo_items = ToodooItem.all
  end

  # GET /toodoo_items/1
  # GET /toodoo_items/1.json
  def show
  end

  # GET /toodoo_items/new
  def new
    @toodoo_item = ToodooItem.new
  end

  # GET /toodoo_items/1/edit
  def edit
  end

  # POST /toodoo_items
  # POST /toodoo_items.json
  def create
    @toodoo_item = ToodooItem.new(toodoo_item_params)

    respond_to do |format|
      if @toodoo_item.save
        format.html { redirect_to @toodoo_item, notice: 'Toodoo item was successfully created.' }
        format.json { render :show, status: :created, location: @toodoo_item }
      else
        format.html { render :new }
        format.json { render json: @toodoo_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toodoo_items/1
  # PATCH/PUT /toodoo_items/1.json
  def update
    respond_to do |format|
      if @toodoo_item.update(toodoo_item_params)
        format.html { redirect_to @toodoo_item, notice: 'Toodoo item was successfully updated.' }
        format.json { render :show, status: :ok, location: @toodoo_item }
      else
        format.html { render :edit }
        format.json { render json: @toodoo_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toodoo_items/1
  # DELETE /toodoo_items/1.json
  def destroy
    @toodoo_item.destroy
    respond_to do |format|
      format.html { redirect_to toodoo_items_url, notice: 'Toodoo item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toodoo_item
      @toodoo_item = ToodooItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toodoo_item_params
      params.require(:toodoo_item).permit(:description)
    end
end
