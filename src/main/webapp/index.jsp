<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>JQW + Spring + MyBatis</title>
    
    <link rel="stylesheet" href="<c:url value="/resources/css/jqx.base.css" />" type="text/css" />
    <link rel="stylesheet" href="<c:url value="/resources/css/jqx.arctic.css" />" type="text/css" />
    
    <script type="text/javascript" src="<c:url value="/resources/js/jquery-1.11.2.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqxcore.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqxdata.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqxbuttons.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqxscrollbar.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqxmenu.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqxcheckbox.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqxlistbox.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqxdropdownlist.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqxgrid.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqxgrid.sort.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqxgrid.pager.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqxgrid.selection.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqxgrid.edit.js" />"></script>
    
    <script type="text/javascript">
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
	            url: '${pageContext.request.contextPath}/get-users',
	            type: 'POST',
	            async: true
	        };
	        var dataAdapter = new $.jqx.dataAdapter(source);
	        $('#jqxgrid').jqxGrid({
	            theme: 'arctic',
	            width: 250,
	            autoheight: true,
	            source: dataAdapter,
	            columns: [{
	                text: 'ID',
	                datafield: 'id',
	                width: 50
	            }, {
	                text: 'Name',
	                datafield: 'name',
	                width: 200
	            }]
	        });
	    });
    </script>
</head>
<body>
    <div id="jqxgrid"></div>
</body>
</html>