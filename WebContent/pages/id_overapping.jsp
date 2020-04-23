<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>id_overapping.jsp</title>

<script type="text/javascript">
    function idUse() {
    	/*
    	자식창에서 opener속성으로 부모창으로 데이터를 전송한다.
    	부모창의 아이디 입력필드가 readonly로 변경되었으므로 JS를 통해
    	값을 변경해야 한다.
    	*/
        opener.document.registFrm.id.value =
            document.overlapFrm.retype_id.value;
        self.close();
    }
</script>
</head>
<body>
    <h2>아이디 중복확인 하기</h2>
	<!-- 
	파라미터로 전달된 아이디를 브라우저에 출력한다.
	차후 JDBC연동을 통해 회원테이블을 확인하게 된다.
	 -->
    <h3>부모창에서 입력한 아이디 : <%=request.getParameter("id") %></h3>

    <h3>아이디가 중복되었을때 재입력한 아이디</h3>
    <form name="overlapFrm">
        <input type="text" name="retype_id" size="20">
        <input type="button" value="아이디사용하기" onclick="idUse();">
    </form>

</body>
</html>