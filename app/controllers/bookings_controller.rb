class BookingsController < ApplicationController
  def show
  end

  def new
    @booking = Booking.new
    @booking.date_check_in = params[:date_check_in]

    @garden = Garden.find(params[:garden_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.garden = Garden.find(params[:garden_id])
    @booking.save
    if @booking.save
      redirect_to dashboard_path, notice: 'Votre réservation a bien été enregistrée.'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def booking_params
    params.require(:booking).permit(:date_check_in, :price)
  end

end
