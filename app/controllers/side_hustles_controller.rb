class SideHustlesController < ApplicationController
  # GET /side_hustles
  # GET /side_hustles.json
  def index
    @side_hustles = SideHustle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @side_hustles }
    end
  end

  # GET /side_hustles/1
  # GET /side_hustles/1.json
  def show
    @side_hustle = SideHustle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @side_hustle }
    end
  end

  # GET /side_hustles/new
  # GET /side_hustles/new.json
  def new
    @side_hustle = SideHustle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @side_hustle }
    end
  end

  # GET /side_hustles/1/edit
  def edit
    @side_hustle = SideHustle.find(params[:id])
  end

  # POST /side_hustles
  # POST /side_hustles.json
  def create
    @side_hustle = SideHustle.new(params[:side_hustle])

    respond_to do |format|
      if @side_hustle.save
        format.html { redirect_to @side_hustle, notice: 'Side hustle was successfully created.' }
        format.json { render json: @side_hustle, status: :created, location: @side_hustle }
      else
        format.html { render action: "new" }
        format.json { render json: @side_hustle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /side_hustles/1
  # PUT /side_hustles/1.json
  def update
    @side_hustle = SideHustle.find(params[:id])

    respond_to do |format|
      if @side_hustle.update_attributes(params[:side_hustle])
        format.html { redirect_to @side_hustle, notice: 'Side hustle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @side_hustle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /side_hustles/1
  # DELETE /side_hustles/1.json
  def destroy
    @side_hustle = SideHustle.find(params[:id])
    @side_hustle.destroy

    respond_to do |format|
      format.html { redirect_to side_hustles_url }
      format.json { head :no_content }
    end
  end
end
