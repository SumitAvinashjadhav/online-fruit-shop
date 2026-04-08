<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login - Fruitkha</title>
  <style>
    body {
      font-family: 'Poppins', sans-serif;
      background: url('assets/images/bg-fruits.jpg') no-repeat center center fixed;
      background-size: cover;
      height: 100vh;
      margin: 0;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .login-box {
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(10px);
      padding: 40px;
      border-radius: 20px;
      width: 350px;
      box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
      text-align: center;
      animation: fadeIn 1s ease;
    }

    .login-box h2 {
      margin-bottom: 25px;
      color: #ff7f00;
      font-size: 26px;
      font-weight: 700;
      letter-spacing: 1px;
    }

    .login-box label {
      display: block;
      text-align: left;
      color: #000;   /* label black */
      font-size: 14px;
      margin-bottom: 5px;
      font-weight: 600;
    }

    .login-box input {
      width: 100%;
      padding: 12px;
      margin-bottom: 18px;
      border: none;
      border-radius: 12px;
      font-size: 14px;
      color: #000;   /* input text black */
      background: #fff;
      outline: none;
      transition: all 0.3s ease;
    }

    .login-box input::placeholder {
      color: #555;   /* placeholder dark gray */
    }

    .login-box input:focus {
      border: 2px solid #ff7f00;
      box-shadow: 0 0 8px rgba(255, 127, 0, 0.5);
    }

    .login-box button {
      width: 100%;
      padding: 12px;
      background: linear-gradient(90deg, #ff7f00, #ffb347);
      border: none;
      border-radius: 12px;
      font-size: 16px;
      font-weight: 600;
      color: #fff;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .login-box button:hover {
      background: linear-gradient(90deg, #ffb347, #ff7f00);
      transform: scale(1.05);
      box-shadow: 0 8px 20px rgba(255, 127, 0, 0.5);
    }

    .login-box p {
      margin-top: 15px;
      font-size: 14px;
      color: #000;  /* text black */
    }

    .login-box a {
      color: #ff7f00;
      text-decoration: none;
      font-weight: 600;
    }

    .login-box a:hover {
      text-decoration: underline;
      color: #000;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-20px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>

  <div class="login-box">
    <h2>Login to Your Account</h2>
    <form action="login">
      <label>Email</label>
      <input type="email" name="email" placeholder="Enter your email" required>
      
      <label>Password</label>
      <input type="password" name="password" placeholder="Enter your password" required>
      
      <button type="submit">Login</button>
      
      <p>Don't have an account? <a href="register">Register</a></p>
    </form>
  </div>

</body>
</html>
