jQuery ->
  $('#tsession').dataTable
    sDom: "<'row-fluid'<'span6'l><'span6'f>r>Tt<'row-fluid'<'span6'i><'span6'p>>"
    sPaginationType: "bootstrap"
    bStateSave: true
    bProcessing: true
    bRetrieve:true
    bDestroy: true
    oTableTools:
      sSwfPath: "http://shielded-crag-6235.herokuapp.com/assets/dataTables/extras/swf/copy_csv_xls_pdf.swf"   
      aButtons: ["print", "csv", "xls", "pdf"]
