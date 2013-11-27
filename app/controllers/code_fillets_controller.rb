class CodeFilletsController < ApplicationController
  before_action :authenticate_user! , :only =>[:new]


  # GET /code_fillets/
  # w przyszlosci GET /code_fillets/?tag=rails => Tag.find(params[:tag]).code_fillets
  def index
  	@code_fillets = CodeFillet.all
  	render "index"
  end

  # GET /code_fillets/:id
  def show
  	@users_code_fillet = true
  	@code_fillet = CodeFillet.find params[:id]
  end

  def new
    @code_fillet = CodeFillet.new
  end

  def create
    permitted_params = params.require(:code_fillet).permit(:name, :description)
    @code_fillet = CodeFillet.new permitted_params
    @code_fillet.save 
    redirect_to @code_fillet
  end

  def edit
    @code_fillet = CodeFillet.find params[:id]
  end

def update
  @code_fillet = CodeFillet.find params[:id]
  permitted_params = params.require(:code_fillet).permit(:name, :description)
  @code_fillet.update_attributes permitted_params
  @code_fillet.save
  redirect_to @code_fillet
end

end
