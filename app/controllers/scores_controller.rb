class ScoresController < ApplicationController
  before_action :set_score, only: [:show, :edit, :update, :destroy]

  # GET /scores
  # GET /scores.json
  def index
    @scores = Score.all
  end

  # GET /scores/1
  # GET /scores/1.json
  def show
  end

  # GET /scores/new
  def new
    @score = Score.new

  end

  # GET /scores/1/edit
  def edit
  end

  # POST /scores
  # POST /scores.json
  def create
    @score = Score.new(
        game_id: params[:score][:game_id],
        player_id: player_id,
        current_score: params[:score][:current_score],
        completed_tickets: params[:score][:completed_tickets],
        uncompleted_tickets: params[:score][:uncompleted_tickets],
        unused_train_stations: params[:score][:unused_train_stations],
        longest_train_route: params[:score][:longest_train_route]
    )

    respond_to do |format|
      if @score.save
        format.html { redirect_to game_path params[:score][:game_id], notice: 'Score was successfully created.' }
        format.json { render :show, status: :created, location: @score }
      else
        format.html { render :new }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scores/1
  # PATCH/PUT /scores/1.json
  def update
    respond_to do |format|
      if @score.update(score_params)
        format.html { redirect_to @score, notice: 'Score was successfully updated.' }
        format.json { render :show, status: :ok, location: @score }
      else
        format.html { render :edit }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scores/1
  # DELETE /scores/1.json
  def destroy
    @score.destroy
    respond_to do |format|
      format.html { redirect_to scores_url, notice: 'Score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score
      @score = Score.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def score_params
      params.require(:score).permit(:game_id, :player_name, :current_score,
                                    :completed_tickets, :uncompleted_tickets, :unused_train_stations, :longest_train_route)
    end

  def player_id
    player = Player.find_by(name: score_params[:player_name])
    return player.id
  end

end
