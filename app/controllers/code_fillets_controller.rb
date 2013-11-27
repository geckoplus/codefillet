class CodeFilletsController < ApplicationController
  before_action :authenticate_user! , :only =>[:new,:edit]
  before_action :find_user, :only =>[:new,:create]


  # GET /code_fillets/
  # w przyszlosci GET /code_fillets/?tag=rails => Tag.find(params[:tag]).code_fillets
  def index
  	@code_fillets = CodeFillet.all
  end

  def active
   @code_fillets = CodeFillet.where(active: true)
   render :index
 end


  # GET /code_fillets/:id
  def show
  	@code_fillet = CodeFillet.find params[:id]
  end

  def new
    @code_fillet = CodeFillet.new
  end

  def create
    @code_fillet = @user.code_fillets.new permitted_params
    if @code_fillet.save
      #ZAPISALO 
      redirect_to @code_fillet
    else
      #NIE ZAPISALO
      render :new
    end
  end

  def edit
    @code_fillet = CodeFillet.find params[:id]
  end

  def update
    @code_fillet = CodeFillet.find params[:id]
    @code_fillet.update_attributes permitted_params
    if @code_fillet.save
      redirect_to @code_fillet
    else
      render :new
    end
  end

  def destroy
    @code_fillet = CodeFillet.destroy permitted_params
  end

  protected
  def permitted_params
    params.require(:code_fillet).permit(:name, :description,:active,:user_id)
  end

  def find_user
     @user = current_user
  end

end
