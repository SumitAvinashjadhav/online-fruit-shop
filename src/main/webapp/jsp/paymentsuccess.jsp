<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Successful</title>
<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #4CAF50, #2E7D32);
        color: #fff;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .success-container {
        background-color: #ffffff;
        color: #333;
        text-align: center;
        padding: 40px 60px;
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
        max-width: 400px;
        animation: fadeIn 0.9s ease-in-out;
    }

    .success-icon {
        font-size: 80px;
        color: #4CAF50;
        margin-bottom: 20px;
        animation: pop 0.6s ease-in-out;
    }

    h1 {
        font-size: 28px;
        margin-bottom: 10px;
    }

    p {
        font-size: 16px;
        color: #555;
        margin-bottom: 30px;
    }

    .btn {
        background: #4CAF50;
        color: #fff;
        text-decoration: none;
        padding: 12px 30px;
        border-radius: 25px;
        font-weight: bold;
        letter-spacing: 1px;
        transition: all 0.3s ease;
    }

    .btn:hover {
        background: #2E7D32;
        transform: scale(1.05);
    }

    @keyframes pop {
        0% { transform: scale(0); opacity: 0; }
        80% { transform: scale(1.1); }
        100% { transform: scale(1); opacity: 1; }
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>
</head>
<body>
    <div class="success-container">
        <div class="success-icon">✔️</div>
        <h1>Payment Successful!</h1>
        <p>Thank you for your purchase.<br>Your transaction was completed successfully.</p>
        <a href="index" class="btn">Go to Home</a>
    </div>
</body>
</html>
