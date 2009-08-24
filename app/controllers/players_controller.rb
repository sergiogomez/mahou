class PlayersController < ApplicationController
  # GET /players
  def index
    @players = Player.all(:order => :name)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /players/1
  def show
    @player = Player.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /players/new
  def new
    @player = Player.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /players/1/edit
  def edit
    @player = Player.find(params[:id])
  end

  # POST /players
  def create
    @player = Player.new(params[:player])

    respond_to do |format|
      if @player.save
        flash[:notice] = 'Player was successfully created.'
        format.html { redirect_to path_after_success }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /players/1
  def update
    @player = Player.find(params[:id])

    respond_to do |format|
      if @player.update_attributes(params[:player])
        flash[:notice] = 'Player was successfully updated.'
        format.html { redirect_to path_after_success }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /players/1
  def destroy
    @player = Player.find(params[:id])
    @player.destroy

    respond_to do |format|
      format.html { redirect_to path_after_success }
    end
  end

  private

  def path_after_success
    players_url
  end
end
