BcProto3::Application.routes.draw do

  resources :documentos do
    member do 
      get 'indexar'
      get 'datos_documento' #Llena con datos de un documento la ventana modal
    end#do
    collection do 
      get 'dashboard'
    end#do
  end#do

  match 'subir_archivo/:id'          => 'documentos#subir_archivo'
  match 'guardar_archivo'            => 'documentos#guardar_archivo'
  match 'guardar_archivo_conest'     => 'documentos#guardar_archivo_conest'
  match 'subir_teg_hacia_busconest'  => 'documentos#crear_teg_desde_conest'

  resources :personas do
    member do 
      get 'datos_persona' #Llena con datos de una persona en la ventana modal
    end#do
    collection do 
      get 'autocompletar_personas'
    end#do
  end#do
  #match 'autocompletar_personas' => 'personas#autocompletar_personas'

  root :to => "busquedas#busqueda_simple"

  match 'admin' => 'documentos#index'

  devise_for :usuarios, :path_names => { :sign_in => 'iniciar_sesion', :sign_out => 'cerrar_sesion' }

  resources :areas

  resources :estudiantes do
    member do 
      get 'datos_estudiante' #Llena con datos de un estudiante en la ventana modal
    end#do
  end#do

  resources :premios

  #resources :estudiantes

  resources :mencions

  resources :reconocimientos

  resources :idiomas

  resources :tipo_documentos

  match 'busqueda_simple'     => 'busquedas#busqueda_simple'

  match 'directorio'                   => 'busquedas#directorio'

  match 'directorio/escuelas/:escuela' => 'busquedas#directorio_escuela', :escuela => /biologia|computacion|fisica|geoquimica|matematica|quimica/
  match 'directorio/tipos/:tipo'       => 'busquedas#directorio_tipo'

  match 'directorio/fechas/:fecha'     => 'busquedas#directorio_fecha', :fecha => /(1|2)\d{3}/

  match 'busqueda_avanzada'            => 'busquedas#busqueda_avanzada'

  match 'documentos/descargar/:id'     => 'documentos#descargar'


  #map.resources :busquedas, :only => {:busqueda_simple, :buscar_documentos}

  #  collection do 
  #    get 'busqueda_simple'
  #    post 'buscar_documentos'
  #  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
