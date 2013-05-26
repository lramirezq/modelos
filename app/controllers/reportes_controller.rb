class ReportesController < ApplicationController
  
  def informe_excel
    
   puts params[:id]
   @competencia =  Competencia.find(params[:id])
   
    respond_to do |format|
       format.html { render :layout => nil }
       format.xml  { render :xml => @competencia }
     end
  end


  def cotizacion_excel
   @cotizacione =  Cotizacione.find(params[:id])
   
   respond_to do |format|
       format.html { render :layout => nil }
       format.xml  { render :xml => @cotizacione }
     end
  end
end