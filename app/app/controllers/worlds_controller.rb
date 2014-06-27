class WorldsController < ApplicationController
  before_action :set_world, only: [:show, :edit, :update, :destroy]

  # GET /worlds
  # GET /worlds.json
  def index
    @worlds = World.paginate(:page => params[:page])
  end

  # GET /worlds/1
  # GET /worlds/1.json
  def show
  end

  # GET /worlds/new
  def new
    @world = World.new

    3.times do
      lvl = @world.levels.build
      2.times { lvl.numbers.build }
      lvl.build_answer
      lvl.build_trap
    end
  end

  # GET /worlds/1/edit
  def edit
  end

  # POST /worlds
  # POST /worlds.json
  def create
    @world = World.new(world_params)

    @world.user = current_user

    respond_to do |format|
      if @world.save
        format.html { redirect_to @world, notice: 'World was successfully created.' }
        format.json { render action: 'show', status: :created, location: @world }
      else
        format.html { render action: 'new' }
        format.json { render json: @world.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worlds/1
  # PATCH/PUT /worlds/1.json
  def update
    respond_to do |format|
      if @world.update(world_params)
        format.html { redirect_to @world, notice: 'World was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @world.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worlds/1
  # DELETE /worlds/1.json
  def destroy
    @world.destroy
    respond_to do |format|
      format.html { redirect_to worlds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_world
      @world = World.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def world_params
      params.require(:world).permit(:title, :description, :player, :public,
        :levels_attributes => [:world_id, :level_type, :level_format,
          :numbers_attributes => [:level_id, :denominator, :numerator],
          :answer_attributes => [:level_id, :denominator, :numerator],
          :trap_attributes => [:level_id, :denominator, :numerator]])
    end
end
