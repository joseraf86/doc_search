class EstudiantesController < AdminController

  # GET /estudiantes
  # GET /estudiantes.json
  def index
    @estudiantes = Estudiante.order("updated_at DESC").paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estudiantes }
    end
  end

  # GET /estudiantes/1
  # GET /estudiantes/1.json
  def show
    @estudiante = Estudiante.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estudiante }
    end
  end

  # GET /estudiantes/new
  # GET /estudiantes/new.json
  def new
    @estudiante = Estudiante.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estudiante }
    end
  end

  # GET /estudiantes/1/edit
  def edit
    @estudiante = Estudiante.find(params[:id])
  end

  # POST /estudiantes
  # POST /estudiantes.json
  def create
    #params[:estudiante][:persona] = Persona.find_by_nombre_completo(params[:estudiante][:persona])
    @estudiante = Estudiante.new(params[:estudiante])

    # Asociar persona a estudiante
    #begin
    @estudiante.persona_id = params[:persona][:id]
    #rescue
    #end

    respond_to do |format|
      if @estudiante.save
        format.html { redirect_to @estudiante, notice: 'Estudiante creado' }
        format.json { render json: @estudiante, status: :created, location: @estudiante }
      else
        format.html { render action: "new" }
        format.json { render json: @estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /estudiantes/1
  # PUT /estudiantes/1.json
  def update
    #parametros_autocomplete!(params[:estudiante][:persona])
    @estudiante = Estudiante.find(params[:id])
   
    begin
     @estudiante.persona_id = params[:persona][:id]
    rescue
    end

    respond_to do |format|
      if @estudiante.update_attributes(params[:estudiante])
        format.html { redirect_to @estudiante, notice: 'Estudiante actualizado' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estudiantes/1
  # DELETE /estudiantes/1.json
  def destroy
    @estudiante = Estudiante.find(params[:id])
    @estudiante.destroy

    respond_to do |format|
      format.html { redirect_to estudiantes_url, :notice => "#{@estudiante.persona.nombre_completo} eliminado" }
      format.json { head :no_content }
    end#do
  end#destroy

  def datos_estudiante
    @estudiante = Estudiante.find(params[:id])

    respond_to do |format|
      format.html { render :layout => !request.xhr? }
    end#do
  end#do

end#class
