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



function buscaEvento(id){
  //alert(id.value);
  $.getScript('/javascripts/causas.js?codigo=' + id.value); 
}


function upvictimas(id){
  $.getScript('/javascripts/victimas.js?rut=' + id.value+ "&control=" + id.id); 
}

function upimputados(id){
  $.getScript('/javascripts/imputados.js?rut=' + id.value+ "&control=" + id.id); 
}

function estado_causa(id){
  if(id.value=="Terminada"){
    alert("Debe agregar Informe de Causa Terminada")
    $("#field_terminada").show("slow");
  }else{
    $("#field_terminada").hide("slow");
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


  
  function recalcular(){
	//Contar Actividades
	var a = 56;
	x = 0;y=0;i=0;j=0;totalcheck=0;totalchecktrue=0;
	while (i == 0){
		if(document.getElementById("proyecto_fases_attributes_"+x+"_actividads_attributes_"+y+"_estado")){
			totalcheck++;
			obj = document.getElementById("proyecto_fases_attributes_"+x+"_actividads_attributes_"+y+"_estado");
			if(obj.checked){
				totalchecktrue++;
			}
			y++;
			j=0;
		}else{
			y=0;
			x++;
			j++;
		}
		
		if(j==2){
			i=1;
		}
		
	}
	a = (totalchecktrue * 100 / totalcheck);
	$("#progressbar").progressbar({ value: a });
	$("#porcentaje").val(a.toFixed(2));
	$("#proyecto_porcentaje").val(a.toFixed(2));
  }

function upperCase(elem) {
   var x=elem.value
   elem.value=x.toUpperCase()
}


  function testing(x, f){
		
		id = f.id;
		id_proyecto = $("#proyecto_id").val();
		id = id.substring(0, id.length - 24);
		id = "#"+id+"valida";
		rechaza = id.substring(0, id.length - 6);
		rechaza+="rechaza"
	
		if (x =="valida"){
			$(id).attr('checked', true);
			$(rechaza).attr('checked', false);
		}else{
			$(id).attr('checked', false);
			$(rechaza).attr('checked', true);
		}

		document.forms["edit_proyecto_"+id_proyecto].submit();

  }


function calcular_edad(dia_nacim,mes_nacim,anio_nacim)
{
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
	$.getScript('/javascripts/modelo.js?numero_id=' + valor + '&idf=' + ident); 
}


function recalcular_edad(){
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
}

function OpenFolder()
        {   
	        filePath = $('#modelo_link_pictures').val();
	        window.location.href = 'smb://'+filePath;
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




