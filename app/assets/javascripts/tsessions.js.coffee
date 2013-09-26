jQuery ->
  $('#tsession').dataTable
    sDom: "<'row-fluid'<'span6'l><'span6'f>r>Tt<'row-fluid'<'span6'i><'span6'p>>"
    sPaginationType: "bootstrap"
    bStateSave: true
    bProcessing: true
    bRetrieve:true
    bDestroy: true
    oTableTools:
      sSwfPath: "http://shielded-crag-6235.herokuapp.com/public/assets/dataTables/extras/swf/copy_csv_xls_pdf.swf"   
      aButtons: ["print", {
         "sExtends": "collection",
         "sButtonText": "Save <span class=\"caret\" />",
         "aButtons": ["csv", "xls", "pdf"]
        }]
