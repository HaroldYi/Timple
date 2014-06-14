/**
 * 필요한 정보가 있으면 이 파일을 link한후 callBack함수는 이름을 resultF로 짓는다.(매개변수는 두개 만들되, 넘어오는 정보1 userId, 정보2 userEmail임) *
 * 예시 
 * <script>
		function resultF(id,email) {
			alert(id);
			alert(email);
			
		}
	</script> 	
 * 현재 userId와 userEmail을 넘겨주고 있음.
 * facebook.js는 사용하는 페이지의 link하는 첫번째 js가 되도록 할것.
 * body태크에 <div id="fb-root"></div>를 붙여 넣을 것.
 */
	window.onload = function facebookResult() {
		
		// 페이스북 SDK 초기화
    	FB.init({
        	appId      : '248606635333902',
         	staus      : true,	         	
         	xfbml      : true,
         	version    : 'v2.0'
       	});	   
		
   	 	// 추가로 초기화할 코드들
   	 	
    	FB.getLoginStatus(function(response) { // 로그인 상태 확인
    		if (response.status === 'connected') {     			
					infoHandler(response);    		
    		} else {    			
    			FB.login(function(response) {
    				if (response.authResponse) {
    					infoHandler(response);
    				} else {
    					alert("가져오기 실패");
    				}    				
    	        }, 
    	        {scope: 'email, user_photos'});			
    		}
    	});   	 
	};
	
    // 페이스북 SDK 로딩
    (function(d, s, id){
    	var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {return;}
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/ko_KR/all.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
     
    function infoHandler(response) {        
    	var accessToken = response.authResponse.accessToken; // 엑세스 토큰 저장
    	var userEmail, userId; 
    	     
    	FB.api('/me', function(user) {
             
    		userEmail = user.email;
    		userId = user.id;    		
    		resultF(userId,userEmail);
        }); 
    }