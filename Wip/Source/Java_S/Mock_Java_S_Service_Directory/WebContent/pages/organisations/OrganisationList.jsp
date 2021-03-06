<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<!--  --><link href="css/Organisation.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="javascript/Organisation.js"></script>
</head>

<body>
	<span class="title">Organisation List</span>
	
	<!-- <a href="#">A B C D E</a> -->
	
	<s:url id="abcd" action="searchOrgByAbcd">
	<s:param name="abcd" value="1"></s:param>
	</s:url>

<div style="width: 100%;border: 0px;padding: 0px; background-color: #EFEFEF">

    <div style="width: 75%;float: left;" ><a href="#" >All</a> | <a href="#">0-9</a> | <s:a href="%{abcd}">A B C D E</s:a> | <a href="#">F G H I J</a> | <a href="#">K L M N</a> | <a href="#">O P R Q </a>| <a href="#">S T U V</a> | <a href="#">W X Y Z </a> 
	</div>
	
	<div>
	
	<s:form method="post" action="addOrganisation" id="form1" name="formCreateButtoneIsSubmitted" >
		<input type="submit" name="submit" value="Create" style="right: 25px;margin-right: 10px" onclick="createButtonIsSubmitted();"/>
		<input type="checkbox" name="checkbox" style="right: 10px" onclick="doSubmit();" id="checkBoxInActive" />Include In-Active
	</s:form>
    
	<s:form method="post" action="getAllOrganisations" id="form2" name="formOrganisationListCheckBoxIsChecked" >
	</s:form>
	
	
	<s:form method="post" action="getOrganisationsByActive" id="form3" name="formOrganisationListByActiveWhenCheckBoxIsUnChecked" >
	</s:form>
	
	
	</div>

	<div style="clear: both;padding-bottom: 10px">
	</div>

       <div style="clear: both;border-width: 1px"></div>
      <div >

		<div style="width: 20%;float: left;border: 1px solid" >Organisation Name </div>
		<div style="width: 29%;float: left;border: 1px solid" >Head Office Address Line 1 </div>

		<div style="width: 10% ;float: left;border:1px solid " >Postcode </div>

		<div style="width: 26% ;float: left ;border:1px solid ">Contact </div>
		<div style="width: 10% ;float: left ;border: 1px solid" >Is Active?</div>
	</div>

    <div style="clear: both;">
    </div>
    
    
    <s:set name="check" value="statusCheckBoxIncludeInActive"/> 
    
    
    	<s:if test="%{#check==0}">
    	
    	<script language="javascript" type="text/javascript">
    	setCheckBoxIsUnChecked();
		</script>
	
		<s:iterator value="listOrgByActive" status="listOrgByActiveStatus">
			<div id='<s:property value="orgId" />' >
					<div  style="float: left;width: 20%;border: 1px solid" ><span class="number"><s:property value="orgName" /></span></div>
					<div style="float: left;width: 29%;border:1px solid" ><s:property value="addressVO.addressLine1" /></div>
					<div  style="float: left;width: 10%;border:1px solid" ><s:property value="addressVO.postCode" /></div>
					<div style="float: left;width: 26%;border:1px solid" ><s:property value="contactVO.firstName" /></div>
					<div  style="float: left;width: 10%;border:1px solid" ><s:if test="statusActive==1">Yes</s:if>
					<s:else>
					No
					</s:else>
					</div>
			</div>
			</s:iterator>
			
			<s:url id="first" action="firstOrganistationList">
				<s:param name="firstPage" value="1"></s:param>
			</s:url>
			
			<s:url id="back" action="backOrganistationList">
				<s:param name="backPage" value="2"></s:param>
			</s:url>
			
			<s:url id="to" action="To"></s:url>
			
			<s:url id="next" action="nextOrganistationList">
				<s:param name="nextPage" value="4" ></s:param>
			</s:url>
			
			<s:url id="end" action="endOrganistationList">
				<s:param name="endPage" value="5"></s:param>
			</s:url>
				
			<div style="float: right;">
			
    		<s:a href="%{first}" >First</s:a>&nbsp;&nbsp;
    		<s:a href="%{back}" >Back</s:a>&nbsp;&nbsp;
    		<s:a href="%{next}" >Next</s:a>&nbsp;&nbsp;
    		<s:a href="%{end}" >End</s:a>
    		<s:hidden name="currentPageNumber" value="currentPageNumber"></s:hidden>
    		</div>
	</s:if>
	
	
	<s:elseif test="%{#check==1}" >
	
		<script language="javascript" type="text/javascript">
		setCheckBoxIsChecked();
		</script>
	
	<s:iterator value="listOrgAll" status="listOrgAllStatus">
			<div id='<s:property value="orgId" />'  class='<s:if test="statusActive==0">InActive</s:if>' >
					<div  style="float: left;width: 20%;border:1px solid" ><span class="number"><s:property value="orgName" /></span></div>
					<div style="float: left;width: 29%;border:1px solid" ><s:property value="addressVO.addressLine1" /></div>
					<div  style="float: left;width: 10%;border:1px solid" ><s:property value="addressVO.postCode" /></div>
					<div style="float: left;width: 26%;border:1px solid" ><s:property value="contactVO.firstName" /></div>
					<div  style="float: left;width: 10%;border:1px solid" ><s:if test="statusActive==1">Yes</s:if>
					<s:else>
					No
					</s:else>
					</div>
			</div>
			</s:iterator>
			
			<s:url id="first" action="firstOrganistationList2">
				<s:param name="firstPage" value="1"></s:param>
			</s:url>
			
			<s:url id="back" action="backOrganistationList2">
				<s:param name="backPage" value="2"></s:param>
			</s:url>
			
			<s:url id="to" action="To"></s:url>
			
			<s:url id="next" action="nextOrganistationList2">
				<s:param name="nextPage" value="4" ></s:param>
			</s:url>
			
			<s:url id="end" action="endOrganistationList2">
				<s:param name="endPage" value="5"></s:param>
			</s:url>
				
			<div style="float: right;">
			
    		<s:a href="%{first}" >First</s:a>&nbsp;&nbsp;
    		<s:a href="%{back}" >Back</s:a>&nbsp;&nbsp;
    		<!-- Page<s:property value="currentPageNumber"/>Of -->
    		
    		<s:property value="pageNumberAll"/>
    		<s:a href="%{next}" >Next</s:a>&nbsp;&nbsp;
    		<s:a href="%{end}" >End</s:a>
    		
    		<s:hidden name="currentPageNumber" value="currentPageNumber"></s:hidden>
    		</div>
	</s:elseif>  
	

	
	
			</div>
</body>
</html>
