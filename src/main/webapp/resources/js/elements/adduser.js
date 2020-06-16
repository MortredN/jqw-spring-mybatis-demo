$(document).ready(function () {
	$('#addUserBtn').jqxButton({ width: '150', height: '25'});
	
	$("#addNameInput").jqxInput({ width: '250', height: '25', placeHolder: "Name"});
	
	$('#addUserBtn').on('click', function () {
		var data = {};
		
    	$('.addInput').each(function() {
    		if($(this).val() != null || $(this).val() != '') {
    			data[$(this).attr("id").substring(3, $(this).attr("id").lastIndexOf('Input')).toLowerCase()] = $(this).val();
    		}    		
    	});
    	
    	$.ajax(CONTEXT_PATH + '/users', {
    	    type: 'POST',
    	    data: JSON.stringify(data),
    	    dataType: 'text',
    	    contentType: 'application/json',
    	    success: function (data, status, xhr) {
    	        alert('Status: ' + status + ' - ' + data);
    	        $('#usergrid').jqxGrid('clearselection');
    	        $('#usergrid').jqxGrid('updatebounddata');
    	        $('.addInput').val('');
    	    },
    	    error: function (jqXhr, textStatus, errorMessage) {
    	    	alert('Error' + errorMessage);
    	    }
    	});
	});
});
