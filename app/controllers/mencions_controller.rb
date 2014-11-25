class MencionsController < AdminController
  include Utilidades

  # GET /mencions
  # GET /mencions.json
  def index
    @mencions = Mencion.order("escuela_id").paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mencions }
    end
  end

  # GET /mencions/1
  # GET /mencions/1.json
  def show
    @mencion = Mencion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mencion }
    end
  end

  # GET /mencions/new
  # GET /mencions/new.json
  def new
    @mencion = Mencion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mencion }
    end
  end

  # GET /mencions/1/edit
  def edit
    @mencion = Mencion.find(params[:id])
  end

  # POST /mencions
  # POST /mencions.json
  def create
    @mencion = Mencion.new(params[:mencion])

    respond_to do |format|
      if @mencion.save
        format.html { redirect_to @mencion, notice: 'Mencion creada' }
        format.json { render json: @mencion, status: :created, location: @mencion }
      else
        format.html { render action: "new" }
        format.json { render json: @mencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mencions/1
  # PUT /mencions/1.json
  def update
    @mencion = Mencion.find(params[:id])

    respond_to do |format|
      if @mencion.update_attributes(params[:mencion])
        format.html { redirect_to @mencion, notice: 'Mencion actualizada' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mencions/1
  # DELETE /mencions/1.json
  def destroy
    @mencion = Mencion.find(params[:id])

    eliminar_recurso?(@mencion) ? notice_msj = "#{@mencion.descripcion} eliminada" : alert_msj = "No se puede eliminar #{@mencion.descripcion} porque hay al menos un estudiante asociado" 

    respond_to do |format|
      format.html { redirect_to mencions_url, alert: alert_msj, notice: notice_msj }
      format.json { head :no_content }
    end
  end
end
