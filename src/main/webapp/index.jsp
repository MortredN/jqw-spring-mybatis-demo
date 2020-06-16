<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>JQW + Spring + MyBatis</title>
    
    <link rel="stylesheet" href="<c:url value="/resources/css/jqwidgets/jqx.base.css" />" type="text/css" />
    <link rel="stylesheet" href="<c:url value="/resources/css/jqwidgets/jqx.arctic.css" />" type="text/css" />
    
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
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxgrid.filter.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxgrid.pager.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxgrid.selection.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxgrid.edit.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxtabs.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jqwidgets/jqxinput.js" />"></script>
    
    <link id="contextPathHolder" data-contextPath="${pageContext.request.contextPath}"/>
    
    <script type="text/javascript" src="<c:url value="/resources/js/elements/usergrid.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/elements/usergrid.filter.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/elements/crudtabs.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/elements/adduser.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/elements/editusers.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/elements/deleteusers.js" />"></script>
</head>
<body>
	<div style='text-align: center;'>
		<p>Name Search:</p>
		<input style='margin: 5px auto; display: block;' class='filterInput' id='searchNameInput'/>
		<input style='margin: 15px auto; display: block;' type="button" value="Filter" id='filterBtn' />
		<input style='margin: 15px auto; display: block;' type="button" value="Reset Filter" id='filterResetBtn' />
	</div>
	
    <div style='margin: 10px auto;' id="usergrid"></div>
    <input style='margin: 15px auto; display: block;' type="button" value="Select all rows" id='selectAllBtn' />
    <input style='margin: 15px auto; display: block;' type="button" value="Unselect all rows" id='unselectAllBtn' />
    
    <div style='margin: 10px auto;' id='crudtabs'>
        <ul style='margin-left: 20px;'>
            <li>Add</li>
            <li>Edit</li>
            <li>Delete</li>
        </ul>
        <div>
            <input style='margin: 20px auto; display: block;' class='addInput' id='addNameInput'/>
	        <input style='margin: 20px auto; display: block;' type="submit" value="Add user" id='addUserBtn' />
        </div>
        <div>
            <input style='margin: 20px auto; display: block;' class='editInput' id='editNameInput'/>
	        <input style='margin: 20px auto; display: block;' type="submit" value="Edit user(s)" id='editUsersBtn' />
        </div>
        <div>
            <input style='margin: 20px auto; display: block;' type="submit" value="Delete user(s)" id='deleteUsersBtn' />
        </div>
    </div>
</body>
</html>
