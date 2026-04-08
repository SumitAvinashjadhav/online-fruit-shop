<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Place Order</title>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <style>
        body {font-family: Arial; background:#f5f5f5; display:flex; justify-content:center; align-items:center; height:100vh;}
        form {background:#fff; padding:30px; border-radius:10px; box-shadow:0 4px 10px rgba(0,0,0,0.2);}
        input,textarea{width:100%;margin-bottom:10px;padding:8px;}
        button{width:100%;background:#28a745;color:#fff;padding:10px;border:none;border-radius:5px;}
    </style>
</head>
<body>
    <form id="orderForm" onsubmit="startPayment(event)">
        <h2>Place Your Order</h2>

        <label>Name:</label>
        <input type="text" id="name" required>

        <label>Address:</label>
        <textarea id="address" required></textarea>

        <label>Mobile Number:</label>
        <input type="number" id="mobilenumber" required>

        <label>Amount (₹):</label>
        <input type="number" id="amount" value="500" required>

        <button type="submit">Proceed to Pay</button>
    </form>

    <script>
        async function startPayment(event) {
            event.preventDefault();
            const amount = document.getElementById("amount").value;

            const response = await fetch(`/createRazorpayOrder?amount=${amount}`);
            const order = await response.json();

            var options = {
                "key": "rzp_test_VIdto8Snwz94lt", // 🔑 Replace with your key
                "amount": order.amount,
                "currency": "INR",
                "name": "Fruit Shop",
                "description": "Payment for fruits",
                "order_id": order.id,
                "handler": function (response) {
                    alert("✅ Payment Successful!\nPayment ID: " + response.razorpay_payment_id);
                    // payment नंतर backend ला call कर order save करण्यासाठी
                    fetch(`/order?name=${document.getElementById('name').value}&address=${document.getElementById('address').value}&mobilenumber=${document.getElementById('mobilenumber').value}`);
                    window.location.href = "/paymentsuccess";
                },
                "prefill": {
                    "name": document.getElementById('name').value,
                    "contact": document.getElementById('mobilenumber').value
                },
                "theme": {"color": "#3399cc"}
            };
            var rzp1 = new Razorpay(options);
            rzp1.open();
        }
    </script>
</body>
</html>
