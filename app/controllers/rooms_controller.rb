# frozen_string_literal: true
class RoomsController < ApplicationController
  def index
    @current_user = current_user
    redirect_to '/signin' unless @current_user
    @rooms = Room.public_rooms
    @users = User.all_except(@current_user)
    @room  = Room.new # For Creating New Room
  end

  def create
    @room = Room.create(name: params['room']['name'])
  end

  def show
    @current_user = current_user
    @single_room  = Room.find(params[:id])
    @message  = Message.new
    @messages = @single_room.messages rescue @single_room
    @rooms = Room.public_rooms
    @users = User.all_except(@current_user)
    @room  = Room.new
    render 'index'
  end
end
