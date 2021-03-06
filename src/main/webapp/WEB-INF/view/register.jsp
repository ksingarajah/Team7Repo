<%--
  Copyright 2017 Google Inc.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
--%>
<!DOCTYPE html>
<html>
<head>
  <title>Register</title>
  <%@ include file="/files.jsp" %>
</head>
<body>
  <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
    <%@ include file="navbar.jsp" %>
    <main class="mdl-layout__content">
      <div id="container">
        <h1>Register</h1>

        <% if(request.getAttribute("error") != null){ %>
            <h2 style="color:red"><%= request.getAttribute("error") %></h2>
        <% } %>

        <form action="/register" method="POST">
          <%@ include file="user_form.jsp" %>
          <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" 
                  type="submit">
            Submit
          </button>
        </form>
      </div>
    </main>
  </div>
</body>
</html>
