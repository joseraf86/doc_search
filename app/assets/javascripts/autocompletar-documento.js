$(function(){
  var personas = {};
  var nombres = [];
  $("#autor").typeahead({
                minLength: 3,
                items: 30,
		source: function ( query, process ) {
                        var seleccion = $("#documento_tipo_documento_id").val();
                        var parametro = '';
                        if (seleccion == '1' || seleccion == '2') {
                          parametro = 'pre-grado'
                        }
		        //get the data to populate the typeahead (plus an id value)
			$.ajax({url: 'http://127.0.0.1:3001/personas.json',
                               cache: false,
                               data: {'query': query, 'tipo_de_persona':parametro },
                               success: function(data){
                                        //reset these containers every time the user searches
                                        //because we're potentially getting entirely different results from the api
                                         personas = {};
                                         nombres = [];
                                         //var json = JSON.parse( data );
                                         for(var i in data) {
                                           //console.log(data[i]);
                                           nombres.push( data[i].nombre_completo ) 
                                           personas[data[i].nombre_completo] = data[i].id;
                                         }
					 //send the array of results to bootstrap for display
					 process( nombres );
                                        },
                         });
                },
                matcher: function () { return true; },
                updater: function ( selectedName ) {
                        //save the id value into the hidden field
                        $( "#autor_id" ).val( personas[ selectedName ] );
                        //return the string you want to go into the textbox (the name)
                        return selectedName;
                        }
                });
  });

$(function(){
  var personas = {};
  var nombres = [];
  $("#autor2").typeahead({
                minLength: 3,
                items: 30,
		source: function ( query, process ) {
                        var seleccion = $("#documento_tipo_documento_id").val();
                        var parametro = '';
                        if (seleccion == '1' || seleccion == '2') {
                          parametro = 'pre-grado'
                        }
		        //get the data to populate the typeahead (plus an id value)
			$.ajax({url: 'http://127.0.0.1:3001/personas.json',
                               cache: false,
                               data: {'query': query, 'tipo_de_persona':parametro },
                               success: function(data){
                                        //reset these containers every time the user searches
                                        //because we're potentially getting entirely different results from the api
                                         personas = {};
                                         nombres = [];
                                         //var json = JSON.parse( data );
                                         for(var i in data) {
                                           //console.log(data[i]);
                                           nombres.push( data[i].nombre_completo ) 
                                           personas[data[i].nombre_completo] = data[i].id;
                                         }
					 //send the array of results to bootstrap for display
					 process( nombres );
                                        },
                         });
                },
                matcher: function () { return true; },
                updater: function ( selectedName ) {
                        //save the id value into the hidden field
                        $( "#autor2_id" ).val( personas[ selectedName ] );
                        //return the string you want to go into the textbox (the name)
                        return selectedName;
                        }
                });
  });

$(function(){
  var personas = {};
  var nombres = [];
  $("#autor3").typeahead({
                minLength: 3,
                items: 30,
		source: function ( query, process ) {
                        var seleccion = $("#documento_tipo_documento_id").val();
                        var parametro = '';
                        if (seleccion == '1' || seleccion == '2') {
                          parametro = 'pre-grado'
                        }
		        //get the data to populate the typeahead (plus an id value)
			$.ajax({url: 'http://127.0.0.1:3001/personas.json',
                               cache: false,
                               data: {'query': query, 'tipo_de_persona': parametro },
                               success: function(data){
                                        //reset these containers every time the user searches
                                        //because we're potentially getting entirely different results from the api
                                         personas = {};
                                         nombres = [];
                                         //var json = JSON.parse( data );
                                         for(var i in data) {
                                           //console.log(data[i]);
                                           nombres.push( data[i].nombre_completo ) 
                                           personas[data[i].nombre_completo] = data[i].id;
                                         }
					 //send the array of results to bootstrap for display
					 process( nombres );
                                        },
                         });
                },
                matcher: function () { return true; },
                updater: function ( selectedName ) {
                        //save the id value into the hidden field
                        $( "#autor3_id" ).val( personas[ selectedName ] );
                        //return the string you want to go into the textbox (the name)
                        return selectedName;
                        }
                });
  });


$(function(){
  var personas = {};
  var nombres = [];
  $("#tutor").typeahead({
                minLength: 3,
                items: 30,
		source: function ( query, process ) {
		//get the data to populate the typeahead (plus an id value)
			$.ajax({url: 'http://127.0.0.1:3001/personas.json',
                               cache: false,
                               data: {'query': query },
                               success: function(data){
                                        //reset these containers every time the user searches
                                        //because we're potentially getting entirely different results from the api
                                         personas = {};
                                         nombres = [];
                                         //var json = JSON.parse( data );
                                         for(var i in data) {
                                           //console.log(data[i]);
                                           nombres.push( data[i].nombre_completo ) 
                                           personas[data[i].nombre_completo] = data[i].id;
                                         }
					 //send the array of results to bootstrap for display
					 process( nombres );
                                        },
                         });
                },
                matcher: function () { return true; },
                updater: function ( selectedName ) {
                        //save the id value into the hidden field
                        $( "#tutor_id" ).val( personas[ selectedName ] );
                        //return the string you want to go into the textbox (the name)
                        return selectedName;
                        }
                });
  });

$(function(){
  var personas = {};
  var nombres = [];
  $("#tutor2").typeahead({
                minLength: 3,
                items: 30,
		source: function ( query, process ) {
		//get the data to populate the typeahead (plus an id value)
			$.ajax({url: 'http://127.0.0.1:3001/personas.json',
                               cache: false,
                               data: {'query': query },
                               success: function(data){
                                        //reset these containers every time the user searches
                                        //because we're potentially getting entirely different results from the api
                                         personas = {};
                                         nombres = [];
                                         //var json = JSON.parse( data );
                                         for(var i in data) {
                                           //console.log(data[i]);
                                           nombres.push( data[i].nombre_completo ) 
                                           personas[data[i].nombre_completo] = data[i].id;
                                         }
					 //send the array of results to bootstrap for display
					 process( nombres );
                                        },
                         });
                },
                matcher: function () { return true; },
                updater: function ( selectedName ) {
                        //save the id value into the hidden field
                        $( "#tutor2_id" ).val( personas[ selectedName ] );
                        //return the string you want to go into the textbox (the name)
                        return selectedName;
                        }
                });
  });

$(function(){
  var personas = {};
  var nombres = [];
  $("#jurado").typeahead({
                minLength: 3,
                items: 30,
		source: function ( query, process ) {
		//get the data to populate the typeahead (plus an id value)
			$.ajax({url: 'http://127.0.0.1:3001/personas.json',
                               cache: false,
                               data: {'query': query },
                               success: function(data){
                                        //reset these containers every time the user searches
                                        //because we're potentially getting entirely different results from the api
                                         personas = {};
                                         nombres = [];
                                         //var json = JSON.parse( data );
                                         for(var i in data) {
                                           //console.log(data[i]);
                                           nombres.push( data[i].nombre_completo ) 
                                           personas[data[i].nombre_completo] = data[i].id;
                                         }
					 //send the array of results to bootstrap for display
					 process( nombres );
                                        },
                         });
                },
                matcher: function () { return true; },
                updater: function ( selectedName ) {
                        //save the id value into the hidden field
                        $( "#jurado_id" ).val( personas[ selectedName ] );
                        //return the string you want to go into the textbox (the name)
                        return selectedName;
                        }
                });
  });

$(function(){
  var personas = {};
  var nombres = [];
  $("#jurado2").typeahead({
                minLength: 3,
                items: 30,
		source: function ( query, process ) {
		//get the data to populate the typeahead (plus an id value)
			$.ajax({url: 'http://127.0.0.1:3001/personas.json',
                               cache: false,
                               data: {'query': query },
                               success: function(data){
                                        //reset these containers every time the user searches
                                        //because we're potentially getting entirely different results from the api
                                         personas = {};
                                         nombres = [];
                                         //var json = JSON.parse( data );
                                         for(var i in data) {
                                           //console.log(data[i]);
                                           nombres.push( data[i].nombre_completo ) 
                                           personas[data[i].nombre_completo] = data[i].id;
                                         }
					 //send the array of results to bootstrap for display
					 process( nombres );
                                        },
                         });
                },
                matcher: function () { return true; },
                updater: function ( selectedName ) {
                        //save the id value into the hidden field
                        $( "#jurado2_id" ).val( personas[ selectedName ] );
                        //return the string you want to go into the textbox (the name)
                        return selectedName;
                        }
                });
  });

