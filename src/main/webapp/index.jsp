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
    
    <script type="text/javascript" src="<c:url value="/resources/js/lib/jquery-1.11.2.js" />"></script>
    
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxcore.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxdata.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxbuttons.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxscrollbar.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxmenu.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxcheckbox.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxlistbox.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxdropdownlist.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxgrid.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxgrid.sort.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxgrid.pager.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxgrid.selection.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxgrid.edit.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxribbon.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxlayout.js" />"></script>
    
    <link id="contextPathHolder" data-contextPath="${pageContext.request.contextPath}"/>
    
    <script type="text/javascript" src="<c:url value="/resources/js/elements/mainlayout.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/elements/usergrid.js" />"></script>
</head>
<body>
	<div id="mainLayout">
		<!-- top documentGroup -->
	    <div data-container="gridPanel">
	        <div id="usergrid"></div>
	    </div>
	    
	    <!-- bottom tabbedGroup -->
	    <div data-container="addUserPanel">
	        Add
	    </div>
	    <div data-container="editUserPanel">
	        Edit
	    </div>
	    <div data-container="deleteUserPanel">
	        Delete
	    </div>
	</div>
</body>
</html>