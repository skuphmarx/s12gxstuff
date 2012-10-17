<%--
  Created by IntelliJ IDEA.
  User: skessler
  Date: 10/16/12
  Time: 10:26 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
  <title>Spring 2Gx Tweets</title>
    <style type="text/css" media="screen">
    #status2 {
        background-color: #eee;
        border: .2em solid #fff;
        margin: 2em 2em 1em;
        padding: 1em;
        width: 50em;
        -moz-box-shadow: 0px 0px 1.25em #ccc;
        -webkit-box-shadow: 0px 0px 1.25em #ccc;
        box-shadow: 0px 0px 1.25em #ccc;
        -moz-border-radius: 0.6em;
        -webkit-border-radius: 0.6em;
        border-radius: 0.6em;
    }

    .ie6 #status {
        display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
    }

    #status ul {
        font-size: 0.9em;
        list-style-type: none;
        margin-bottom: 0.6em;
        padding: 0;
    }

    #status li {
        line-height: 1.3;
    }

    #status h1 {
        text-transform: uppercase;
        font-size: 1.1em;
        margin: 0 0 0.3em;
    }

    #page-body {
        margin: 2em 1em 1.25em 18em;
    }

    h2 {
        margin-top: 1em;
        margin-bottom: 0.3em;
        font-size: 1em;
    }

    p {
        line-height: 1.5;
        margin: 0.25em 0;
    }

    #controller-list ul {
        list-style-position: inside;
    }

    #controller-list li {
        line-height: 1.3;
        list-style-position: inside;
        margin: 0.25em 0;
    }

    @media screen and (max-width: 480px) {
        #status {
            display: none;
        }

        #page-body {
            margin: 0 1em 1em;
        }

        #page-body h1 {
            margin-top: 0;
        }
    }
    </style>
</head>
<body>
   <g:form action="showTweets" name="tweeter">
   <div id="status2" role="complementary">
   <B>Show Tweets containing:</B>  <g:checkBox name="show2gx" value="1" checked="${check2gx}"/>Spring2Gx&nbsp;&nbsp;<g:checkBox checked="${checkone}" name="showOne" value="1"/>SpringOne&nbsp;&nbsp;<g:checkBox checked="${checkspring}" name="showSpring" value="1"/>Spring &nbsp;&nbsp;<g:checkBox checked="${checkcloud}" name="cloudFound" value="1"/>Cloud Foundry&nbsp;&nbsp;<g:submitButton name="submit" value="Search"/><br/>
   </g:form>
</div>
<div style="margin-left: 40px;">
<b>Some Tweets as of ${new java.util.Date().toGMTString()} </b>
    <hr>
<g:each in="${results}" var="res" status="i">
   <div class="${(i % 2) == 0 ? 'odd' : 'even'}">
    <span style="background-color: #cbdaa5;"><b>User: </b>${res.from_user_name}</span>
    <br/>
    <b>Tweet: </b>${res.text}
    <hr>
   </div>
</g:each>
    </div>
</body>
</html>