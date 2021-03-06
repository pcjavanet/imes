<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="java.util.List"%>
<%@page import="com.chimade.mes.sys.model.Model"%>
<%@page import="com.chimade.mes.sys.model.User"%>
<%@page import="com.chimade.mes.sys.service.AuthorizeModelActionService"%>
<%@page import="com.chimade.mes.sys.util.SystemContant"%>
<%!
	String loadUreeMenu (ApplicationContext ctx, int userId ) {
			StringBuffer bf = new StringBuffer();
		try {
		AuthorizeModelActionService as =  ( AuthorizeModelActionService)ctx.getBean("authorizeModelActionServiceImpl");
		List< Model> lm = as.listUserAuthorizeById(userId);
		String authoStr = as.createtUserJsonMenuByModel(userId);
// 		System.out.println( authoStr);
		bf.append(authoStr+"\r\n");
		bf.append("var menuUrls=new Array( ");
 		for( int k = 0 ; k< lm.size() ; k ++ ) {
 				bf.append( " '" +lm.get(k).getUrl() +"'");
 				if   ( k<  (lm.size()-1) ) 
 					bf.append(",");
 		}
 		bf.append(");\r\n");
		bf.append("var models=[");
 		for( int k = 0 ; k< lm.size() ; k ++ ) {
 				bf.append( lm.get(k).toJsonFormat() );
 				if   ( k<  (lm.size()-1) ) 
 					bf.append(",");
 		}
 		bf.append("] ;\r\n");
		}catch(Exception e) {
			System.out.println(e.toString());
		}
	  	return bf.toString();
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
	    <title>Kitchen Sink</title>
<script>
	var menuManagerTxt = "System Maintenance";
	var factory_id ;
</script>
	    <link rel="stylesheet" type="text/css" href="resources/css/ext-all-debug.css" />
	    <link rel="stylesheet" type="text/css" href="resources/css/sink.css" />
<!-- 	    <link rel="stylesheet" type="text/css" href="resources/css/ext-neptune.css" /> -->
	    <!-- Ext JS -->
	    <script type="text/javascript" src="js/ext-all.js"></script>
	    <script type="text/javascript" src="js/TabCloseMenu.js"></script>
	    <script type="text/javascript" src="js/chmade-util.js"></script>
	      
	      <script type="text/javascript" src="app/view/examples/Example.js"></script>
<!-- 	    <script type="text/javascript" src="app/store/Examples.js"></script> -->
	    
	    <script>
	    <%
	    if (  request.getSession().getAttribute(SystemContant.SESSION_SYS_USER) != null ){
	     	ApplicationContext ctx = org.springframework.web.context.support.WebApplicationContextUtils.getWebApplicationContext(getServletContext());    
//	      	 String[] beanNames = 	ctx.getBeanDefinitionNames();
//	      	 for( String n : beanNames) {
//	      		 System.out.println( n);
//	      	 }


	    	String authoStr =  loadUreeMenu( ctx  , ( (User)request.getSession().getAttribute(SystemContant.SESSION_SYS_USER)).getId() );
	    	out.println(   authoStr );
	    }
	    %>
	    </script>
	    <%-- below is projectt --%>
<script type="text/javascript" src="app/store/SysCompanyStore.js"></script>
<script type="text/javascript" src="app/model/SysCompanyModel.js"></script>
<script type="text/javascript" src="app/view/examples/forms/Company.js"></script>
<script type="text/javascript" src="app/store/SysFactoryStore.js"></script>
<script type="text/javascript" src="app/model/SysFactoryModel.js"></script>
<script type="text/javascript" src="app/view/examples/forms/Factory.js"></script>
<script type="text/javascript" src="app/store/SysLabelStore.js"></script>
<script type="text/javascript" src="app/model/SysLabelModel.js"></script>
<script type="text/javascript" src="app/view/examples/forms/Label.js"></script>
<script type="text/javascript" src="app/store/SysLabelDetailStore.js"></script>
<script type="text/javascript" src="app/model/SysLabelDetailModel.js"></script>
<script type="text/javascript" src="app/view/examples/forms/LabelDetail.js"></script>
<script type="text/javascript" src="app/store/SysLabelTemplateStore.js"></script>
<script type="text/javascript" src="app/model/SysLabelTemplateModel.js"></script>
<script type="text/javascript" src="app/view/examples/forms/LabelTemplate.js"></script>
<script type="text/javascript" src="app/store/SysLineStore.js"></script>
<script type="text/javascript" src="app/model/SysLineModel.js"></script>
<script type="text/javascript" src="app/view/examples/forms/Line.js"></script>
<script type="text/javascript" src="app/store/SysLocationStore.js"></script>
<script type="text/javascript" src="app/model/SysLocationModel.js"></script>
<script type="text/javascript" src="app/view/examples/forms/Location.js"></script>
<script type="text/javascript" src="app/store/SysPartStore.js"></script>
<script type="text/javascript" src="app/model/SysPartModel.js"></script>
<script type="text/javascript" src="app/view/examples/forms/Part.js"></script>
<script type="text/javascript" src="app/store/SysPartFamilyStore.js"></script>
<script type="text/javascript" src="app/model/SysPartFamilyModel.js"></script>
<script type="text/javascript" src="app/view/examples/forms/PartFamily.js"></script>
<script type="text/javascript" src="app/store/SysPrinterStore.js"></script>
<script type="text/javascript" src="app/model/SysPrinterModel.js"></script>
<script type="text/javascript" src="app/view/examples/forms/Printer.js"></script>
<script type="text/javascript" src="app/store/SysProcessStore.js"></script>
<script type="text/javascript" src="app/model/SysProcessModel.js"></script>
<script type="text/javascript" src="app/view/examples/forms/Process.js"></script>
<script type="text/javascript" src="app/store/SysShopfloorStore.js"></script>
<script type="text/javascript" src="app/model/SysShopfloorModel.js"></script>
<script type="text/javascript" src="app/view/examples/forms/Shopfloor.js"></script>

<script type="text/javascript" src="app/store/SysModelStore.js"></script>
<script type="text/javascript" src="app/model/SysModelModel.js"></script>
<!-- <script type="text/javascript" src="app/view/examples/forms/Model.js"></script> -->
<script type="text/javascript" src="app/view/examples/forms/authorization/Model.js"></script>

<script type="text/javascript" src="app/store/SysActionStore.js"></script>
<script type="text/javascript" src="app/model/SysActionModel.js"></script>
<script type="text/javascript" src="app/view/examples/forms/authorization/Action.js"></script>
<script type="text/javascript" src="app/view/examples/forms/authorization/ModelAssociationRole.js"></script>
<!-- <script type="text/javascript" src="app/view/examples/forms/Action.js"></script> -->

<script type="text/javascript" src="app/store/SysModelActionStore.js"></script>
<script type="text/javascript" src="app/model/SysModelActionModel.js"></script>
<!-- <script type="text/javascript" src="app/view/examples/forms/ModelAction.js"></script> -->

<script type="text/javascript" src="app/view/examples/forms/authorization/ModelAssociationUser.js"></script>
<script type="text/javascript" src="app/view/examples/forms/authorization/ModelAction.js"></script>

<script type="text/javascript" src="app/store/SysFactoryUserStore.js"></script>
<script type="text/javascript" src="app/model/SysFactoryUserModel.js"></script>
<script type="text/javascript" src="app/view/examples/forms/FactoryUser.js"></script>

<script type="text/javascript" src="app/store/SysAuthorizeModelActionStore.js"></script>
<script type="text/javascript" src="app/model/SysAuthorizeModelActionModel.js"></script>

<!-- <script type="text/javascript" src="app/view/examples/forms/authorization/AuthorizeModelAction.js"></script> -->
<script type="text/javascript" src="app/view/examples/forms/AuthorizeModelAction.js"></script>
<script type="text/javascript" src="app/store/SysRoleStore.js"></script>
<script type="text/javascript" src="app/model/SysRoleModel.js"></script>
<script type="text/javascript" src="app/view/examples/forms/Role.js"></script>
	       
<%-- 	
	    	    <script type="text/javascript" src="app/view/examples/trees/BasicTree.js"></script>

<script type="text/javascript" src="app/view/examples/tabs/IconTabs.js"></script>
<script type="text/javascript" src="app/view/examples/tabs/FramedTabs.js"></script>
<script type="text/javascript" src="app/view/examples/tabs/BasicTabs.js"></script>
<script type="text/javascript" src="app/view/examples/tabs/TitledTabPanels.js"></script>

<script type="text/javascript" src="app/view/examples/windows/BasicWindow.js"></script>
<script type="text/javascript" src="app/view/examples/grids/GroupedHeaderGrid.js"></script>
<script type="text/javascript" src="app/view/examples/grids/GroupedGrid.js"></script>
<script type="text/javascript" src="app/view/examples/grids/LockedGrid.js"></script>

<script type="text/javascript" src="app/view/examples/toolbars/DockedToolbar.js"></script>
<script type="text/javascript" src="app/view/examples/toolbars/BasicToolbar.js"></script>


<script type="text/javascript" src="app/view/examples/panels/BasicPanel.js"></script>
<script type="text/javascript" src="app/view/examples/panels/FramedPanel.js"></script>



   --%>
<!--    <script type="text/javascript" src="app/model/Restaurant.js"></script> -->
<!--    <script type="text/javascript" src="app/store/Restaurants.js"></script> -->
<!--    <script type="text/javascript" src="app/view/examples/grids/BasicGrid.js"></script> -->
   
     <script type="text/javascript" src="app/model/SysUserModel.js"></script>
   <script type="text/javascript" src="app/store/SysUserStore.js"></script> 

<!--    <script type="text/javascript" src="app/view/examples/PanelExample.js"></script> -->
<!-- <script type="text/javascript" src="app/store/States.js"></script> -->
<!-- <script type="text/javascript" src="app/view/examples/forms/Register.js"></script> -->
<!--    <script type="text/javascript" src="app/view/examples/forms/Contact.js"></script> -->
<!--  <script type="text/javascript" src="app/view/examples/forms/Login.js"></script> -->
 <script type="text/javascript" src="app/view/examples/forms/User.js"></script>
<!--  <script type="text/javascript" src="app/store/TreeStore.js"></script> -->


<!-- <script type="text/javascript" src="app/store/Companies.js"></script> -->

   <script type="text/javascript" src="app/view/List.js"></script>
   <script type="text/javascript" src="app/view/Header.js"></script>
   <script type="text/javascript" src="app/view/Viewport.js"></script>
<script type="text/javascript" src="app/controller/Main.js"></script>
<%--  --%>  
<!-- 		<script type="text/javascript" src="js/all-classes.js"></script> -->
	    <script type="text/javascript" src="js/ext-neptune-debug.js"></script>
	    
	    <!-- Example -->


    <!-- GC -->

	    <script type="text/javascript" src="app.js"></script>
	    
	</head>
	
	<body>
	</body>
</html>
<script>

</script>