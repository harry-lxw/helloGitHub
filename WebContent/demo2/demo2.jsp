<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 遍历List集合 -->
<s:iterator var="i" value="{'aa','bb','cc'}">
	<s:property value="#i"/><br/>
</s:iterator>

<hr/>

<!-- 遍历Map集合 -->
<s:iterator var="entry" value="#{'aa':'11','bb':'22','cc':'33'}">
	<s:property value="#entry.key"/>--<s:property value="#entry.value"/><br/>
</s:iterator>

<hr>
<!-- 遍历前10个 -->
<!-- begin:开始位置		end:结束位置	step:每循环一次增加数	-->
<s:iterator var="i" begin="1" end="10" step="1">
	<s:property value="#i"/><br>
</s:iterator>

<hr>

<!-- 第三个位置的数字置为红色 -->
<s:iterator var="i" begin="100" end="300" step="5" status="status">
	<s:if test="#status.count % 3 == 0">
		<font color="red"><s:property value="#i"/></font><br>
	</s:if>
	<s:else>
		<s:property value="#i"/><br>
	</s:else>
</s:iterator>

</body>
</html>