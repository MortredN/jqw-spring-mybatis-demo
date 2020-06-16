var CONTEXT_PATH = $('#contextPathHolder').attr('data-contextPath');
var selectedIds = [];

$(document).ready(function () {
    var source = {
        datatype: 'json',
        datafields: [{
            name: 'id',
            type: 'number'
        }, {
            name: 'name',
            type: 'string'
        }],
        id: 'id',
        url: CONTEXT_PATH + '/users',
        type: 'GET',
        async: true
    };
    var dataAdapter = new $.jqx.dataAdapter(source);
    $('#usergrid').jqxGrid({
        theme: 'arctic',
        width: 550,
        autoheight: true,
        source: dataAdapter,
        columns: [{
            text: 'ID',
            datafield: 'id',
            width: 50
        }, {
            text: 'Name',
            datafield: 'name',
            width: 500
        }],
        selectionmode: 'checkbox',
        ready: () => {
        	$('#columntableusergrid').find("[role='columnheader']").eq(0).find("div").hide();
        }
    });
    
    $('#usergrid').bind('rowselect', function (event) {
        var selectedRow = event.args.rowindex;
        var selectedId = $('#usergrid').jqxGrid('getcelltext', selectedRow, 'id');
        selectedIds.push(selectedId);
    });
    $('#usergrid').bind('rowunselect', function (event) {
        var selectedRow = event.args.rowindex;
        var selectedId = $('#usergrid').jqxGrid('getcelltext', selectedRow, 'id');
        selectedIds = selectedIds.filter(id => id != selectedId);
    });
    
    $('#selectAllBtn').jqxButton({ width: '150', height: '25'});
    $('#unselectAllBtn').jqxButton({ width: '150', height: '25'});

	$('#selectAllBtn').on('click', function () {
		for(let i = 0; i < $('#usergrid').jqxGrid('getrows').length; i++)
			$('#usergrid').jqxGrid('selectrow', i);
		console.log(selectedIds);
	});

	$('#unselectAllBtn').on('click', function () {
		$('#usergrid').jqxGrid('clearselection');
		selectedIds = [];
		console.log(selectedIds);
	});
});
