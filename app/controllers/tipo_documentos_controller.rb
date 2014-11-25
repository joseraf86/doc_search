class TipoDocumentosController < AdminController
  include Utilidades

  # GET /tipo_documentos
  # GET /tipo_documentos.json
  def index
    @tipo_documentos = TipoDocumento.order("descripcion").paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_documentos }
    end
  end

  # GET /tipo_documentos/1
  # GET /tipo_documentos/1.json
  def show
    @tipo_documento = TipoDocumento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_documento }
    end
  end

  # GET /tipo_documentos/new
  # GET /tipo_documentos/new.json
  def new
    @tipo_documento = TipoDocumento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_documento }
    end
  end

  # GET /tipo_documentos/1/edit
  def edit
    @tipo_documento = TipoDocumento.find(params[:id])
  end

  # POST /tipo_documentos
  # POST /tipo_documentos.json
  def create
    @tipo_documento = TipoDocumento.new(params[:tipo_documento])

    respond_to do |format|
      if @tipo_documento.save
        format.html { redirect_to @tipo_documento, notice: 'Tipo de Documento creado' }
        format.json { render json: @tipo_documento, status: :created, location: @tipo_documento }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_documentos/1
  # PUT /tipo_documentos/1.json
  def update
    @tipo_documento = TipoDocumento.find(params[:id])

    respond_to do |format|
      if @tipo_documento.update_attributes(params[:tipo_documento])
        format.html { redirect_to @tipo_documento, notice: 'Tipo de Documento actualizado' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_documentos/1
  # DELETE /tipo_documentos/1.json
  def destroy
    @tipo_documento = TipoDocumento.find(params[:id])

    eliminar_recurso?(@tipo_documento) ? notice_msj = "#{@tipo_documento.descripcion} eliminado" : alert_msj = "No se puede eliminar #{@tipo_documento.descripcion} porque tiene al menos un documento asociado"

    respond_to do |format|
      format.html { redirect_to tipo_documentos_url, alert: alert_msj, notice: notice_msj }
      format.json { head :no_content }
    end#do
  end#def
end#class
