<%! 
String makeCss(String name, Object title) {
	if(name.equals(title)) {
		return "w3-bar-item w3-button w3-red";
	} else {
		return "w3-bar-item w3-button";
	}
}
%>
<div class="w3-bar w3-aqua">
  <a href="Home.jsp" class="<%= makeCss("Home", request.getAttribute("title")) %>">Home</a>
  <a href="Academics.jsp" class="<%= makeCss("Academics", request.getAttribute("title")) %>">Academics</a>
  <a href="Partnership.jsp" class="<%= makeCss("Partnership", request.getAttribute("title")) %>">Partnership</a>
  <a href="About.jsp" class="<%= makeCss("About", request.getAttribute("title")) %>">About</a>
</div>
