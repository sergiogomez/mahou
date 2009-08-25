class TrophiesController < ApplicationController
  # GET /trophies
  def index
    @trophies = Trophy.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /trophies/1
  def show
    @trophy = Trophy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /trophies/new
  def new
    @trophy = Trophy.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /trophies/1/edit
  def edit
    @trophy = Trophy.find(params[:id])
  end

  # POST /trophies
  def create
    @trophy = Trophy.new(params[:trophy])

    respond_to do |format|
      if @trophy.save
        flash[:notice] = 'Trophy was successfully created.'
        format.html { redirect_to path_after_success }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /trophies/1
  def update
    @trophy = Trophy.find(params[:id])

    respond_to do |format|
      if @trophy.update_attributes(params[:trophy])
        flash[:notice] = 'Trophy was successfully updated.'
        format.html { redirect_to path_after_success }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /trophies/1
  def destroy
    @trophy = Trophy.find(params[:id])
    @trophy.destroy

    respond_to do |format|
      format.html { redirect_to path_after_success }
    end
  end

  private

  def path_after_success
    trophies_url
  end

end
