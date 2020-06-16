const AND_OPERATOR = 0;
const OR_OPERATOR = 1;

$(document).ready(function () {
	$('#filterBtn').jqxButton({ width: '150', height: '25'});
	$('#filterResetBtn').jqxButton({ width: '150', height: '25'});
	
    $('#searchNameInput').jqxInput({ width: '400', height: '25'});
    
    $('#filterBtn').on('click', function () {
    	$('#usergrid').jqxGrid('clearfilters');
    	$('.filterInput').each(function() {
    		addFilter($(this).attr("id").substring(6, $(this).attr("id").lastIndexOf('Input')), "string");
    	});
    	$('#usergrid').jqxGrid('applyfilters');
	});
    
    $('#filterResetBtn').on('click', function () {
    	$('#usergrid').jqxGrid('clearfilters');
    	$('.filterInput').val('');
	});
});

const addFilter = (columnName, filterType) => {
	var filtervalue = $('#search' + columnName + 'Input').val();
	if(filterType === "string") {
		if(filtervalue != null || filtervalue != '') {
		    var filtercondition = 'CONTAINS';
		    var filtergroup = new $.jqx.filter();
		    var filterName = filtergroup.createfilter('stringfilter', filtervalue, filtercondition);
		    filtergroup.addfilter(AND_OPERATOR, filterName);
		    $('#usergrid').jqxGrid('addfilter', 'name', filtergroup);
		}
	}
}
