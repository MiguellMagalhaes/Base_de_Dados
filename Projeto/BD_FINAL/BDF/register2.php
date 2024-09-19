<!DOCTYPE html>
<html lang="en">
<head>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            background-color: #f4f4f4;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f4f4f4;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 8px;
        }

        input,
        select {
            margin-bottom: 16px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
            color: #3498db;
        }

        a:hover {
            text-decoration: underline;
        }
    <!-- Meta tags e estilos... -->
</head>
<body>
    <div class="container">
        <?php
        // Verificar se o formulário foi enviado
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            // Conectar ao banco de dados
            $host = 'localhost';
            $user = 'root';
            $pass = '';
            $db = 'testy';
            
            $conn = new mysqli($host, $user, $pass, $db);
            
            // Verificar a conexão
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
            
            // Processar os dados do formulário
            $name = $_POST["name"];
            $email = $_POST["email"];
            $password = password_hash($_POST["password"], PASSWORD_BCRYPT);
            $age = $_POST["age"];
            
            // Verificar se o e-mail já existe
            $checkEmailQuery = "SELECT * FROM users WHERE email = '$email'";
            $result = $conn->query($checkEmailQuery);
            
            if ($result->num_rows > 0) {
                echo "Error: Email already exists. Please choose a different email.";
            } else {
                // Inserir dados do usuário na tabela 'users'
                $insertQuery = "INSERT INTO users (name, email, password, age, status, isactive, Registration_Date) VALUES ('$name', '$email', '$password', $age, 1, 1, NOW())";
                
                if ($conn->query($insertQuery) === TRUE) {
                    echo "Registration successful!";
                } else {
                    echo "Error: " . $insertQuery . "<br>" . $conn->error;
                }
            }
            
            // Fechar a conexão com o banco de dados
            $conn->close();
        }
        ?>
        
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
        </head>
<body>
    <div class="container">
        <form action="register_process.php" method="POST">
            <h2>Register</h2>
            <label for="name">Name:</label>
            <input type="text" name="name" required>

            <label for="email">Email:</label>
            <input type="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" name="password" required>

            <label for="age">Age:</label>
            <input type="number" name="age" required>

            <label for="gender">Gender:</label>
            <select name="gender" required>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>

            <button type="submit">Register</button>
        </form>
        <p>Already have an account? <a href="login.php">Login here</a></p>
    </div>
</body>
</html>