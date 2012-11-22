class CoffsController < ApplicationController
  # GET /coffs
  # GET /coffs.json
  def index
    @coffs = Coff.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coffs }
    end
  end

  # GET /coffs/1
  # GET /coffs/1.json
  def show
    @coff = Coff.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coff }
    end
  end

  # GET /coffs/new
  # GET /coffs/new.json
  def new
    @coff = Coff.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coff }
    end
  end

  # GET /coffs/1/edit
  def edit
    @coff = Coff.find(params[:id])
  end

  # POST /coffs
  # POST /coffs.json
  def create
    @coff = Coff.new(params[:coff])

    respond_to do |format|
      if @coff.save
        format.html { redirect_to @coff, notice: 'Coff was successfully created.' }
        format.json { render json: @coff, status: :created, location: @coff }
      else
        format.html { render action: "new" }
        format.json { render json: @coff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coffs/1
  # PUT /coffs/1.json
  def update
    @coff = Coff.find(params[:id])

    respond_to do |format|
      if @coff.update_attributes(params[:coff])
        format.html { redirect_to @coff, notice: 'Coff was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coffs/1
  # DELETE /coffs/1.json
  def destroy
    @coff = Coff.find(params[:id])
    @coff.destroy

    respond_to do |format|
      format.html { redirect_to coffs_url }
      format.json { head :no_content }
    end
  end
end
