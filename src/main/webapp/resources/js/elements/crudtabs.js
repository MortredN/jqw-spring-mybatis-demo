$(document).ready(function () {
    $('#crudtabs').jqxTabs({ width: 550, height: 150 });
    $('#crudtabs').bind('selected', function (event) {
        var item = event.args.item;
        var title = $('#crudtabs').jqxTabs('getTitleAt', item);
    });
});
