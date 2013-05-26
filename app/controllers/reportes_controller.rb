class ReportesController < ApplicationController
  
  def informe_excel
    
   puts params[:id]
   @competencia =  Competencia.find(params[:id])
   
    respond_to do |format|
       format.html { render :layout => nil }
       format.xml  { render :xml => @reports }
     end
  end
  
end
