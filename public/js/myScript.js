$(document).ready( function () {
    $('#myTable').DataTable( {
        "pageLength": -1,
        "oLanguage": {
			"sSearch": "<div style='display:block'>Rechercher: _INPUT_</div>",
            
            "sLengthMenu": '<div style="display:block">Afficher <select>'+
                '<option value="5">5</option>'+
                '<option value="10">10</option>'+
                '<option value="20">20</option>'+
                '<option value="30">30</option>'+
                '<option value="40">40</option>'+
                '<option value="50">50</option>'+
                '<option value="-1" selected>All</option>'+
                '</select> enregistrements</div>'
            }
    } );
} );

$(function () {
    $('[data-toggle="tooltip"]').each(function(){ $(this).tooltip(); });
  });