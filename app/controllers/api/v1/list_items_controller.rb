class Api::V1::ListItemsController < ActionController::API
before_action :set_params, only: [:show]

  def index
    listItem = ListItem.all
    render json: listItem, status: 200
  end


  def show
    render json: @listItem, status: 200
  end


private

def set_params
  @listItem = ListItem.find(params[:id])
end

end
