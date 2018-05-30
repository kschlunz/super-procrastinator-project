class Api::V1::ListsController < ActionController::API


  before_action :set_params, only: [:show,:update,:destroy]

  def index
    list = List.all
    render json: lists, status: 200
  end

  def create
    list = List.create(list_params)
    render json: list, status: 201
  end

  def update
    @list.update(list_params)
    render json: @list, status: 200
  end

  def destroy
    listId = @list.id
    @list.destroy
    render json: {message:"Zap! list deleted", listId:listId}
  end

  def show
    render json: @list, status: 200
  end

  private
  def list_params
    params.permit(:name, :github)
  end

  def set_params
    @list = List.find(params[:id])
  end

end
