function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("true");
  $(link).closest(".fields").hide();
}

function remove_fields_act(link) {
  $(link).prev("input[type=hidden]").val("true");
  $(link).closest(".fields").hide();
  recalcular();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).before(content.replace(regexp, new_id));
}


function add_fields_act(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).before(content.replace(regexp, new_id));
  recalcular();
}


function add_fields_especial(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).before(content.replace(regexp, new_id));
  
}

function aparece(id){
  objeto=document.getElementById(id);
  objeto.style.display="block";    
}

function desaparece(id){
  objeto=document.getElementById(id);
  objeto.style.display="none";
}

function tipo_id(id){
  tipoid = id.id
  rut = tipoid.replace('tipoidentificacion', 'rut');
  rid= rut;
  rut = "#"+rut;

  if(id.value =="RUN"){
      $(rut).Rut({
          on_error: function(){ document.getElementById(rid).value=""; document.getElementById(rid).focus; alert('El rut ingresado es incorrecto');  },  format_on: 'keyup'
      });
      
  }else{
    $(rut).val("");
    $(rut).unbind();
  }
}  

function tipo_id_competencia(id){
  tipoid = id.id
  rut = tipoid.replace('tipo_id', 'rutmodelo');
  rid= rut;
  rut = "#"+rut;

  if(id.value =="RUN"){
      $(rut).Rut({
          on_error: function(){ document.getElementById(rid).value=""; document.getElementById(rid).focus; alert('El rut ingresado es incorrecto');  },  format_on: 'keyup'
      });
      
  }else{
    $(rut).val("");
    $(rut).unbind();
  }
}

function tipo_id_busqueda(id){
  
  tipoid = id.id
  rut = tipoid.replace('tipo_id', 'numero_id');
  rid= rut;
  rut = "#"+rut;

  if(id.value =="RUN"){
      $(rut).Rut({
          on_error: function(){ document.getElementById(rid).value=""; document.getElementById(rid).focus; alert('El rut ingresado es incorrecto');  },  format_on: 'keyup'
      });
      
  }else{
    $(rut).val("");
    $(rut).unbind();
  }
}


function tipo_id_cliente(id){
  tipoid = id.id
  rut = tipoid.replace('tipo_id', 'cliente_rut');
  rid= rut;
  rut = "#cliente_rut";
  if(id.value =="RUN"){
      $(rut).Rut({
          on_error: function(){ document.getElementById('cliente_rut').value=""; document.getElementById('cliente_rut').focus; alert('El rut ingresado es incorrecto');  },  format_on: 'keyup'
      });
      
  }else{
    $(rut).val("");
    $(rut).unbind();
  }
}

function tipo_id(id){
  tipoid = id.id
  rut = tipoid.replace('tipo_id', 'numero_id');
  rid= rut;
  rut = "#"+rut;

  if(id.value =="RUN"){
      $(rut).Rut({
          on_error: function(){ document.getElementById(rid).value=""; document.getElementById(rid).focus; alert('El rut ingresado es incorrecto');  },  format_on: 'keyup'
      });
      
  }else{
    $(rut).val("");
    $(rut).unbind();
  }
}


function calculaEdad(x){
	alert(x.value);
	
}


  


function upperCase(elem) {
   var x=elem.value
   elem.value=x.toUpperCase()
}



function calcular_edad(dia_nacim,mes_nacim,anio_nacim)
{
   // alert("año" + anio_nacim + " mes " + mes_nacim + " dia " + dia_nacim );
    fecha_hoy = new Date();
    ahora_anio = fecha_hoy.getYear();
    ahora_mes = fecha_hoy.getMonth();
    ahora_dia = fecha_hoy.getDate();
    edad = (ahora_anio + 1900) - anio_nacim;
    if ( ahora_mes < (mes_nacim - 1))
    {
      edad--;
    }
    if (((mes_nacim - 1) == ahora_mes) && (ahora_dia < dia_nacim))
    { 
      edad--;
    }
    if (edad > 1900)
    {
    edad -= 1900;
    }
  if (edad == 1900){edad = 0}
  return edad;
}


$(document).ready(function ()
{
    $('#modelo_fecha_nacimiento_3i').change(function() {
		dia = $('#modelo_fecha_nacimiento_3i').val();
		mes = $('#modelo_fecha_nacimiento_2i').val();
		anno = $('#modelo_fecha_nacimiento_1i').val();
		
		edad = calcular_edad(dia,mes,anno);
		$('#edad').val(edad);
        if (edad < 18){
			$('#responsable').attr("style", "visibility: visible")
		}else{
			$('#responsable').attr("style", "visibility: hidden")
		}

    });

	$('#modelo_fecha_nacimiento_2i').change(function() {
        	dia = $('#modelo_fecha_nacimiento_3i').val();
			mes = $('#modelo_fecha_nacimiento_2i').val();
			anno = $('#modelo_fecha_nacimiento_1i').val();

			edad = calcular_edad(dia,mes,anno);
			$('#edad').val(edad);
	        if (edad < 18){
				$('#responsable').attr("style", "visibility: visible")
			}else{
				$('#responsable').attr("style", "visibility: hidden")
			}
    });

	$('#modelo_fecha_nacimiento_1i').change(function() {
        	dia = $('#modelo_fecha_nacimiento_3i').val();
			mes = $('#modelo_fecha_nacimiento_2i').val();
			anno = $('#modelo_fecha_nacimiento_1i').val();

			edad = calcular_edad(dia,mes,anno);
			$('#edad').val(edad);
	        if (edad < 18){
				$('#responsable').attr("style", "visibility: visible")
			}else{
				$('#responsable').attr("style", "visibility: hidden")
			}
    });
    //Do XML / XSL transformation here
});




function buscaCliente(id){
  $.getScript('/javascripts/cliente.js?id=' + id); 
}

function buscaModelo(id){
	valor =  id.value;
	ident = id.id;
  if (valor != ""){
	 $.getScript('/javascripts/modelo.js?numero_id=' + valor + '&idf=' + ident); 
  }
}


function buscaClienteExiste(id){
	valor =  id.value;
	ident = id.id;
  if (valor != ""){
	 $.getScript('/javascripts/busca_cliente.js?numero_id=' + valor + '&idf=' + ident); 
  }
}


function recalcular_edad(){
			dia = $('#modelo_fecha_nacimiento_3i').val();
			mes = $('#modelo_fecha_nacimiento_2i').val();
			anno = $('#modelo_fecha_nacimiento_1i').val();
			edad = calcular_edad(dia,mes,anno);
			if (edad == 1900){
				edad = 0;
			}
			$('#edad').val(edad);
		
	    if (edad < 18){
				$('#responsable').attr("style", "visibility: visible")
			}else{
				$('#responsable').attr("style", "visibility: hidden")
			}
}

function recalcular_edad_show(){
			anno = $('#anno').val();
			mes = $('#mes').val();
			dia = $('#dia').val();

			edad = calcular_edad(dia,mes,anno);
			if (edad == 1900){
				edad = 0;
			}

      $('#edad').val(edad);
			if (edad < 18){
				$('#responsable').attr("style", "visibility: visible")
			}else{
				$('#responsable').attr("style", "visibility: hidden")
			}
}


function edades(x){
  
  if (x.id == "edad_hasta"){
    desde =  $('#edad_desde').val() 
    if (x.value < desde){
      alert("El rango Hasta no puede ser menor que el Desde");
    }
  }else{
     hasta =  $('#edad_hasta').val() 
   
    if(x.value != empty){
      if (x.value > hasta){
       alert("El rango Desde no puede ser mayor que el hasta");
     }
  }
}
  

  
  
}








