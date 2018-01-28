<html>
<body>
<h3>Training Portal</h3>

<!-- read the favoriteLanguage cookie -->
<%
	//the default... if there are no cookies
	String favLang = "Java";

	//get the cookies from the browser request
	Cookie[] theCookies = request.getCookies();
	
	//find our favoriteLanguage cookie
	if(theCookies != null)
	{
		for(Cookie tempCookie : theCookies)
		{
			if("myAapp.favoriteLanguage".equals(tempCookie.getName()))
			{
				favLang = tempCookie.getValue();
				break;
			}
		}
	}

%>

<!-- now show a personalized page ... use the "favLang" variable -->

<h4>New Books for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Latest New Books for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>


<h4>2nd Latest New Books for <%= favLang %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<a href = "cookies-personalize-form.html"> Personalize this page</a>

</body>

</html>