<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login and Dashboard</title>

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f5;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        /* GLOBAL H1 */
        .global-title {
            color: #2b6cb0;
            margin: 20px 0;
        }

        /* LOGIN */
        .container {
            background-color: #e2e8f0;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 320px;
        }

        .container h2 {
            text-align: center;
            color: #2b6cb0;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin: 10px 0 5px;
        }

        input[type="text"],
        input[type="password"] {
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            margin-top: 20px;
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #2b6cb0;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #1a4b8c;
        }

        .error {
            color: red;
            margin-top: 10px;
            text-align: center;
        }

        /* DASHBOARD */
        .mini-page {
            display: none;
            width: 100%;
        }

        .mini-page.active {
            display: block;
        }

        .web-page {
            background-color: #fafafa;
            color: #333;
        }

        header, footer {
            background-color: #4CAF50;
            padding: 20px;
            text-align: center;
            color: white;
        }

        nav {
            background-color: #333;
            padding: 10px;
            text-align: center;
        }

        nav a {
            margin: 0 10px;
            text-decoration: none;
            color: white;
        }

        nav a:hover {
            color: #4CAF50;
        }

        main {
            padding: 20px;
        }

        section {
            margin-bottom: 20px;
            padding: 20px;
            background-color: #e7e7e7;
            border-radius: 5px;
        }

        section h2 {
            color: #4CAF50;
        }
    </style>
</head>

<body>

<!-- ALWAYS VISIBLE H1 -->
<h1 class="global-title">Naga Koshikewar</h1>

<!-- LOGIN PAGE -->
<div class="container" id="loginContainer">
    <h2>Login</h2>

    <form id="loginForm">
        <label>Username</label>
        <input type="text" id="username" required>

        <label>Password</label>
        <input type="password" id="password" required>

        <input type="submit" value="Login">
    </form>

    <div id="errorMessage" class="error"></div>
</div>

<!-- DASHBOARD -->
<div class="mini-page" id="miniPage">
    <div class="web-page">

        <header>
            <h1>Welcome to my demo</h1>
        </header>

        <nav>
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#contact">Contact</a>
        </nav>

        <main>
            <section id="home">
                <h2>Home</h2>
                <p>Testing the application</p>
            </section>

            <section id="about">
                <h2>About</h2>
                <p>This web page is used for demo purposes.</p>
            </section>

            <section id="contact">
                <h2>Contact</h2>
                <p>Kowshikeswarreddy@gmail.com</p>
            </section>
        </main>

        <footer>
            <p>&copy; 2024 My Web Page</p>
        </footer>

    </div>
</div>

<script>
    const loginForm = document.getElementById("loginForm");
    const miniPage = document.getElementById("miniPage");
    const loginContainer = document.getElementById("loginContainer");
    const errorMessage = document.getElementById("errorMessage");

    const correctUsername = "kowshik";
    const correctPassword = "madam";

    loginForm.addEventListener("submit", function (e) {
        e.preventDefault();

        const username = document.getElementById("username").value;
        const password = document.getElementById("password").value;

        if (username === correctUsername && password === correctPassword) {
            loginContainer.style.display = "none";
            miniPage.classList.add("active");
            errorMessage.textContent = "";
        } else {
            errorMessage.textContent = "Invalid username or password";
        }
    });
</script>

</body>
</html>
