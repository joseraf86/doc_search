class IdiomasController < AdminController
  include Utilidades

  # GET /idiomas
  # GET /idiomas.json
  def index
    @idiomas = Idioma.order("descripcion").paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @idiomas }
    end
  end

  # GET /idiomas/1
  # GET /idiomas/1.json
  def show
    @idioma = Idioma.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @idioma }
    end
  end

  # GET /idiomas/new
  # GET /idiomas/new.json
  def new
    @idioma = Idioma.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @idioma }
    end
  end

  # GET /idiomas/1/edit
  def edit
    @idioma = Idioma.find(params[:id])
  end

  # POST /idiomas
  # POST /idiomas.json
  def create

    @idioma = Idioma.new(params[:idioma])

    respond_to do |format|
      if @idioma.save
        format.html { redirect_to @idioma, notice: 'Idioma creado' }
        format.json { render json: @idioma, status: :created, location: @idioma }
      else
        format.html { render action: "new" }
        format.json { render json: @idioma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /idiomas/1
  # PUT /idiomas/1.json
  def update
    @idioma = Idioma.find(params[:id])

    respond_to do |format|
      if @idioma.update_attributes(params[:idioma])
        format.html { redirect_to @idioma, notice: 'Idioma actualizado' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @idioma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idiomas/1
  # DELETE /idiomas/1.json
  def destroy
    @idioma = Idioma.find(params[:id])

    eliminar_recurso?(@idioma) ? notice_msj = "#{@idioma.descripcion} eliminado" : alert_msj = "No se puede eliminar #{@idioma.descripcion} porque tiene al menos un documento asociado"

    respond_to do |format|
      format.html { redirect_to idiomas_url, alert: alert_msj, notice: notice_msj }
      format.json { head :no_content }
    end#do
  end#def
end#class
