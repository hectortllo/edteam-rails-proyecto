class RoomsController < ApplicationController
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all
  before_action :set_room, only: [:show, :edit, :destroy, :reserve]

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

  def edit
  end

  def update
    @room = Room.find(params[:id])

    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to rooms_path,
                      notice: 'Room actualizado correctamente'}
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @room.destroy

    respond_to do |format|
      format.html { redirect_to rooms_url,
                    notice: 'Habitación eliminada' }
    end
  end

  def reserve
    @room.update(taken: true)
    redirect_to rooms_url, notice: 'Habitación apartada'
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
