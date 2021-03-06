class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  layout 'mobile', only: [:new, :form, :create, :show, :edit, :update, :destroy]
  before_action :require_login, only: [:index]

  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = Reservation.all.page(params[:page])
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @reservation = Reservation.new
    @table = Table.all
    @slot = Slot.all
  end

  # GET /reservations/1/edit
  def edit
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to edit_slot_path(@reservation.slot_id), notice: 'Reservation was successfully created.' }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to @reservation, notice: 'Reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render :edit }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservations_url, notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def table
    respond_to do |format|
      format.html
      format.js
    end
  end

  def connect
    messenger_user_id = params['messenger user id']
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.fetch(:reservation).permit(:date, :time, :table_id, :guest, :messenger_user_id, :'messenger user id', :slot_id)
    end

    def require_login
      unless current_user
        flash[:notice] = "You must log in to access the backend."
        redirect_to new_user_session_path
      end
    end
end
