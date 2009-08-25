class TrophyGamesController < ApplicationController

  # GET /games/1/trophy_games
  def index
    @game = Game.find(params[:game_id])
    @trophy_games = TrophyGame.all(:conditions => { :game_id => params[:game_id] })
    #@players_that_no_played = Player.all(:order => :name)
  end

  # GET /games/1/trophy_games/1/select_players
  def select_players
    @game = Game.find(params[:game_id])
    @trophy_game = TrophyGame.find(params[:id])
    @players = Player.all(:order => :name)
  end

  # PUT /games/1/trophy_games/1
  def update
    @game = Game.find(params[:game_id])
    @trophy_game = TrophyGame.find(params[:id])

    respond_to do |format|
      if @trophy_game.update_attributes(params[:trophy_game])
        flash[:notice] = "OK"
        format.html { redirect_to select_players_game_trophy_game_path(@game,@trophy_game) }
      else
        flash[:notice] = "Error"
        format.html { render :action => "select_players" }
      end
    end
  end

end
