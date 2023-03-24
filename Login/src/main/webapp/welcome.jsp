<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <style>
        style.css body {
            margin: 0;
            padding: 0;
            background: #fafafa;
            color: #fff;
        }

        .main {
            position: relative;
            height: 100vh;
            width: 100%;
            top: 0;
            left: 0;
            right: 0;
        }

        .main .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.7);
            z-index: 0;
        }

        .main #video {
            position: absolute;
            z-index: -1;
            min-height: 100%;
            min-width: 100%;
            width: 100%;
            height: 100%;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            object-fit: cover;
        }

        .main .heading {
            position: absolute;
            height: auto;
            width: 100%;
            top: 50%;
            transform: translateY(-60%);
            text-align: center;
            text-shadow: 0px 0.5px 5px rgba(0, 0, 0, 0.2);
        }

        .main .heading .head {
            position: relative;
            font-family: 'RacingSansOne', sans-serif;
            font-size: 48px;
            font-weight: 600;
            color: #fff;

        }

        .main .heading .head span {
            color: #017fb5;
        }

        .main .heading .sub {
            position: relative;
            font-family: 'cinzel', sans-serif;
            font-size: 22px;
            font-weight: 300;
            color: #fff;
            margin: -2% 0 2% 0;
        }

        .main .heading .btns {
            height: auto;
            width: 100%;
            display: flex;
            text-align: center;
            align-items: center;
            justify-content: center;
            position: relative;
        }

        .main .heading .btns a {
            color: #fff;
            text-align: center;
            text-decoration: none;
            font-family: 'cinzel', sans-serif;
            font-size: 15px;
            font-weight: 300;
            display: block;
            border: 1px solid rgba(255, 255, 255, 0.5);
            height: auto;
            width: 150px;
            padding: 10px;
            display: flex;
            text-align: center;
            align-items: center;
            justify-content: center;
            margin-left: 1%;
            border-radius: 2px;
            transition: 0.5s ease-in-out;
        }

        .main .heading .btns a:hover {
            background: #017fb5;
            border: 1px solid #017fb5;
        }

        .main .heading .btns .btn1 {
            background: #017fb5;
            border: 1px solid #017fb5;
        }

        .main .heading .btns .btn1:hover {
            background: #017fb5;
            border: 1px solid #017fb5;
            color: rgba(255, 255, 255, 0.95);
        }

        .user-info {
            margin-top: 60px;
        }

        .user-info h3 {
            color: #fff;
            font-size: 30px;

        }

        #typing-text {
            border-right: .15em solid orange;
            padding-right: 10px;
            white-space: nowrap;
            overflow: hidden;
            animation: typing 1s steps(40, end) infinite;
        }

        @keyframes typing {
            from {
                width: 0
            }

            to {
                width: 100%
            }
        }
    </style>
</head>

<body>
    <div class="main">
       <img src="java.jpg" id="video" alt="">
        <div class="overlay"></div>
        <div class="heading">
            <h1 class="head">WELCOME TO <span id="typing-text"></span></h1>
            <div class="user-info">
                <h3><%=request.getAttribute("first_name") %></h3>
                <h3><%=request.getAttribute("last_name") %></h3>
            </div>

        </div>
    </div>
    <script>
        const text = "JAVA WEB PROGRAMMING";
        let index = 0;

        function type() {
            const typingText = document.getElementById("typing-text");
            typingText.innerHTML += text[index];
            index++;
            if (index === text.length) {
                clearInterval(typingInterval);
            }
        }
        const typingInterval = setInterval(type, 200);
    </script>
</body>

</html>