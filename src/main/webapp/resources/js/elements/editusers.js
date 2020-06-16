$(document).ready(function () {
	$('#editUsersBtn').jqxButton({ width: '150', height: '25'});
	
	$("#editNameInput").jqxInput({ width: '250', height: '25', placeHolder: "Name"});
	
	$('#editUsersBtn').on('click', function () {
		var data = {};
		
    	$('.editInput').each(function() {
    		if($(this).val() != null || $(this).val() != '') {
    			data[$(this).attr("id").substring(4, $(this).attr("id").lastIndexOf('Input')).toLowerCase()] = $(this).val();
    		}    		
    	});
    	
    	var url = CONTEXT_PATH + '/users/';
    	for(let i = 0; i < selectedIds.length; i++) {
    		url += selectedIds[i];
    		if(i != selectedIds.length - 1)
    			url += ",";
    	}
    	
    	$.ajax(url, {
    	    type: 'PUT',
    	    data: JSON.stringify(data),
    	    dataType: 'text',
    	    contentType: 'application/json',
    	    success: function (data, status, xhr) {
    	        alert('Status: ' + status + ' - ' + data);
    	        $('#usergrid').jqxGrid('clearselection');
    	        $('#usergrid').jqxGrid('updatebounddata');
    	        $('.editInput').val('');
    	    },
    	    error: function (jqXhr, textStatus, errorMessage) {
    	    	alert('Error' + errorMessage);
    	    }
    	});
	});
});
