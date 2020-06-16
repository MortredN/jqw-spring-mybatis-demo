$(document).ready(function () {
	$('#deleteUsersBtn').jqxButton({ width: '150', height: '25'});
	
	$('#deleteUsersBtn').on('click', function () {		
    	var url = CONTEXT_PATH + '/users/';
    	for(let i = 0; i < selectedIds.length; i++) {
    		url += selectedIds[i];
    		if(i != selectedIds.length - 1)
    			url += ",";
    	}
    	
    	$.ajax(url, {
    	    type: 'DELETE',
    	    dataType: 'text',
    	    success: function (data, status, xhr) {
    	        alert('Status: ' + status + ' - ' + data);
    	        $('#usergrid').jqxGrid('clearselection');
    	        $('#usergrid').jqxGrid('updatebounddata');
    	    },
    	    error: function (jqXhr, textStatus, errorMessage) {
    	    	alert('Error' + errorMessage);
    	    }
    	});
	});
});
