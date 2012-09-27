class SocksController < ApplicationController
   before_filter :login_required

  # GET /socks
  # GET /socks.json
    layout "admin1"

  def index
    @socks = Sock.find(:all, :order => "id desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @socks }
    end
  end

  # GET /socks/1
  # GET /socks/1.json
  def show
    @sock = Sock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sock }
    end
  end

  # GET /socks/new
  # GET /socks/new.json
  def new
    @sock = Sock.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sock }
    end
  end

  # GET /socks/1/edit
  def edit
    @sock = Sock.find(params[:id])
  end

  # POST /socks
  # POST /socks.json
  def create
    @sock = Sock.new(params[:sock])

    respond_to do |format|
      if @sock.save
         flash[:success] = "Sock was successfully created"
        format.html { redirect_to socks_path, notice: 'Sock was successfully created.' }
        format.json { render json: @sock, status: :created, location: @sock }
      else
        format.html { render action: "new" }
        format.json { render json: @sock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /socks/1
  # PUT /socks/1.json
  def update
    @sock = Sock.find(params[:id])

    respond_to do |format|
      if @sock.update_attributes(params[:sock])
        flash[:success] = "Updated successfully"
        format.html { redirect_to socks_path, notice: 'Sock was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socks/1
  # DELETE /socks/1.json
  def destroy
    @sock = Sock.find(params[:id])
    @sock.destroy

    respond_to do |format|
      flash[:success] = "Deleted successfully "
      format.html { redirect_to socks_url }
      format.json { head :no_content }
    end
  end
end
