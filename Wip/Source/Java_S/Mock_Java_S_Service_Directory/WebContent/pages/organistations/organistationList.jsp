<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/css/style.css" media="screen" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<h1>Organistation</h1>
	<table border="1">
		<thead>
			<tr>
				<th>Organistation Name</th>
				<th>Head Office Address Line 1</th>
				<th>Post Code</th>
				<th>Contact</th>
				<th>Is Active?</th>

			</tr>
		</thead>
		<tbody>
			<s:iterator value="listOrganistation" status="listStatus"></s:iterator>
			<tr>
				<td><s:property value="orgname" /></td>
				<td><s:property value="" /></td>
				<td><s:property value="" /></td>
				<td><s:property value="statusactive" /></td>
			</tr>
		</tbody>
	</table>
	Page
	<s:text name="index" />
	of
	<s:label name="xxx" value="2" />
</body>
</html>