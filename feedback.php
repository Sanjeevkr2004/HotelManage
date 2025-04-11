<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        form {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            max-width: 500px;
            margin: auto;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        input[type="text"], input[type="email"], textarea {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }
        input[type="submit"] {
            background-color: #5cb85c;
            color: white;
            border: none;
            padding: 12px 20px;
            cursor: pointer;
            border-radius: 4px;
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #4cae4c;
        }
        input:focus, textarea:focus {
            outline: none;
            border-color: #5cb85c;
        }
        .success, .error {
            text-align: center;
            margin: 20px 0;
        }
    </style>
</head>
<body>

    <h2>Feedback Form</h2>
    <form action="process_feedback.php" method="POST">
        <label for="name">Your Name:</label>
        <input type="text" id="name" name="name" aria-required="true" required>
        
        <label for="email">Your Email:</label>
        <input type="email" id="email" name="email" aria-required="true" required>
        
        <label for="message">Your Feedback:</label>
        <textarea id="message" name="message" rows="5" aria-required="true" required></textarea>
        
        <input type="submit" value="Submit Feedback">
    </form>

</body>
</html>
