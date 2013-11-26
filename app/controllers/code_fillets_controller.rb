class CodeFilletsController < ApplicationController
  
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
end
