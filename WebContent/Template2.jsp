<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Timple</title>
<link rel="stylesheet" href="/css/timple.css" />
<link rel="stylesheet" href="/css/common.css" />
<link rel="stylesheet" href="/css/header.css" />
<script src="/js/vendor/modernizr.js"></script>
</head>
<body>

	<h3>템플릿입니다.</h3>
	
	

	<%@ include file="/base/footer.jsp"%>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/js/foundation.min.js"></script>
	<script src="/js/header.js"></script>
	<script>
	// 키값 생성 함수
	function gen_activation_key($email){   
	    $generatedKey = sha1(mt_rand(10000,99999).time().$email);
	    return $generatedKey;
	}
	 
	// 승인 메일 보내기 함수
	function verificationMAIL($gKEY,$email){
	    $to=$email;
	    $from='<a href="mailto:suahnn@gmail.com">suahnn@gmail.com</a>';
	    $subject='Verify your Email Address - EXAMPLE.COM';
	    $headers .= 'MIME-Version: 1.0' . "\r\n";
	    $headers .= 'Content-type: text/html; charset=UTF-8' . "\r\n";
	   // $mailMsg='<a href="http://example.com/activation.php?email=">http://example.com/activation.php?email=</a>'.$email.'&key='.$gKEY.'";
	    mail($to,$subject,$mailMsg,$headers);
	}

	function send() {
	    verificationMAIL(gen_activation_key, "tkddnr0201@naver.com");
	}
	</script>
</body>
</html>