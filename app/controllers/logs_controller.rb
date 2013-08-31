class LogsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }
  before_action :set_log, only: [:show, :edit, :update, :destroy, :report]
  before_filter :authenticate_user!

  # GET /logs
  # GET /logs.json
  def index
    @logs = Log.all
  end

  # GET /logs/1
  # GET /logs/1.json
  def show
  end

  # GET /logs/new
  def new
    @log = Log.new
  end

  # GET /logs/1/edit
  def edit
  end

  # POST /logs
  # POST /logs.json
  def create
    if params[:log][:date]
      date = Date.parse(params[:log][:date]) rescue Date.today
      @log = Log.today(date).find_or_create_by(user_id: current_user.id)
      @log.date = date
      @log.diary = params[:log][:diary]
    else
      @log = Log.new(log_params)
    end

    respond_to do |format|
      if @log.save
        format.html { redirect_to @log, notice: 'Log was successfully created.' }
        format.json { render action: 'show', status: :created, location: @log }
      else
        format.html { render action: 'new' }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logs/1
  # PATCH/PUT /logs/1.json
  def update
    respond_to do |format|
      if @log.update(log_params)
        format.html { redirect_to @log, notice: 'Log was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logs/1
  # DELETE /logs/1.json
  def destroy
    @log.destroy
    respond_to do |format|
      format.html { redirect_to logs_url }
      format.json { head :no_content }
    end
  end

  def report
    if @log.new_record?
      date = Time.parse(params[:log][:date]) rescue Time.now.beginning_of_day
      @log.date = date
    end
    @log.curse_count = @log.curse_count.to_i + 1

    if @log.save
      render action: 'show', status: @log.new_record? ? :created : :ok, location: @log
    else
      render json: @log.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log
      @log = Log.today(Time.zone.now.beginning_of_day).find_or_initialize_by(user_id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def log_params
      params.require(:log).permit(:user_id, :curse_count, :diary, :date)
    end
end
