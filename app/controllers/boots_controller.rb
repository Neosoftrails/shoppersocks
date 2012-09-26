

class BootsController < ApplicationController
 before_filter :login_required
 



  # GET /boots
  # GET /boots.json
    layout "admin1"
  def index
    @boots = Boot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @boots }
    end
  end

  # GET /boots/1
  # GET /boots/1.json
  def show
    @boot = Boot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @boot }
    end
  end

  # GET /boots/new
  # GET /boots/new.json
  def new
    @boot = Boot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @boot }
    end
  end

  # GET /boots/1/edit
  def edit
    @boot = Boot.find(params[:id])
  end

  # POST /boots
  # POST /boots.json
  def create
    @boot = Boot.new(params[:boot])
   puts "================================================================="
   puts params[:boot]
   p @boot.bootlargeimage_file_name
   puts "iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii"

  
    respond_to do |format|
      if @boot.save
        format.html { redirect_to @boot, notice: 'Boot was successfully created.' }
        format.json { render json: @boot, status: :created, location: @boot }
      else
        format.html { render action: "new" }
        format.json { render json: @boot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /boots/1
  # PUT /boots/1.json
  def update
    @boot = Boot.find(params[:id])

    respond_to do |format|
      if @boot.update_attributes(params[:boot])
        format.html { redirect_to @boot, notice: 'Boot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @boot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boots/1
  # DELETE /boots/1.json
  def destroy
    @boot = Boot.find(params[:id])
    @boot.destroy


    respond_to do |format|
      format.html { redirect_to boots_url }
      format.json { head :no_content }
    end
  end


end
