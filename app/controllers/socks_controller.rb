class SocksController < ApplicationController
  # GET /socks
  # GET /socks.json
    layout "admin"

  def index
    @socks = Sock.all

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
        format.html { redirect_to @sock, notice: 'Sock was successfully created.' }
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
        format.html { redirect_to @sock, notice: 'Sock was successfully updated.' }
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
      format.html { redirect_to socks_url }
      format.json { head :no_content }
    end
  end
end
