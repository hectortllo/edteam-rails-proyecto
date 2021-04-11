class RoomsController < ApplicationController
  before_action :set_room, only: [:show]

  def index
    @rooms = Room.all
  end

  def show
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to rooms_path,
                      notice: 'Room creado correctamente' }
      else
        format.html { render :new }
      end
    end
  end

  private
  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:id,
                                :length,
                                :width,
                                :image,
                                :hotel_id,
                                :taken,
                                :description)
                          .with_defaults(hotel_id: 1,
                                        image: "http://placehold.it/700x400",
                                        taken: 0)
  end
end
