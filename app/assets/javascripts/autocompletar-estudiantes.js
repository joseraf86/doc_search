$(function(){
  var estudiantes = {};
  var nombres = [];
  $("#persona").typeahead({
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
                                         estudiantes = {};
                                         nombres = [];
                                         //var json = JSON.parse( data );
                                         for(var i in data) {
                                           //console.log(data[i]);
                                           nombres.push( data[i].nombre_completo ) 
                                           estudiantes[data[i].nombre_completo] = data[i].id;
                                         }
					 //send the array of results to bootstrap for display
					 process( nombres );
                                        },
                         });
                },
                matcher: function () { return true; },
                updater: function ( selectedName ) {
                        //save the id value into the hidden field
                        $( "#persona_id" ).val( estudiantes[ selectedName ] );
                        //return the string you want to go into the textbox (the name)
                        return selectedName;
                        }
                });
  });
