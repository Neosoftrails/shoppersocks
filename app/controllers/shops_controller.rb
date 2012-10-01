class ShopsController < ApplicationController
    layout "admin1"


     def index
    @shops = Shop.find(:all, :order => "id desc")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shops }
    end
  end

	def new
    @shop = Shop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @boot }
    end
  end


  def create
    @shop = Shop.new(params[:shop])

  
    respond_to do |format|
      if @shop.save
         flash[:success] = "Shop was successfully created"
        format.html { redirect_to shops_path, notice: 'Boot was successfully created.' }
        format.json { render json: Shops_path, status: :created, location: @shop }
      else
        format.html { render action: "new" }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

   def show
    @shop = Shop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shop }
    end
  end

    def edit
    @shop = Shop.find(params[:id])
  end


    def update
    @shop = Shop.find(params[:id])

    respond_to do |format|
      if @shop.update_attributes(params[:shop])
         flash[:success] = "Updated successfully "
        format.html { redirect_to shops_path, notice: 'shop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boots/1
  # DELETE /boots/1.json
  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy


    respond_to do |format|
       flash[:success] = "Deleted successfully "
      format.html { redirect_to shops_url }
      format.json { head :no_content }
    end
  end





end
