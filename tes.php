<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deteksi Plagiarisme</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1 {
            color: #333;
        }
        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 0 auto;
        }
        .form-container textarea,
        .form-container select,
        .form-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
        .result {
            margin-top: 20px;
            padding: 15px;
            background-color: #e0f7fa;
            border-radius: 5px;
        }
        .result.success {
            background-color: #d4edda;
        }
        .result.danger {
            background-color: #f8d7da;
        }
    </style>
</head>
<body>

    <h1>Deteksi Plagiarisme</h1>
    
    <div class="form-container">
        <form action="index.php" method="post">
            <label for="text">Masukkan Teks untuk dibandingkan:</label>
            <textarea name="text" id="text" rows="6" required></textarea>

            <label for="article_id">Pilih Artikel dari Database:</label>
            <select name="article_id" id="article_id" required>
                <?php
                    // Koneksi ke MySQL untuk menampilkan artikel
                    $conn = new mysqli("localhost", "root", "", "news-portal");

                    if ($conn->connect_error) {
                        die("Koneksi gagal: " . $conn->connect_error);
                    }

                    $sql = "SELECT article_id, article_description FROM article";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo "<option value='" . $row["article_id"] . "'>" . substr($row["article_description"], 0, 50) . "...</option>";
                        }
                    } else {
                        echo "<option disabled>No articles found</option>";
                    }
                    $conn->close();
                ?>
            </select>

            <input type="submit" name="submit" value="Periksa Plagiarisme">
        </form>

        <?php
            session_start();
            
            if (isset($_POST['submit'])) {
                // Simpan teks sementara dalam session
                $_SESSION['text1'] = $_POST['text'];
                $text1 = $_SESSION['text1'];

                // Ambil teks artikel dari database
                $article_id = $_POST['article_id'];
                $conn = new mysqli("localhost", "root", "", "news-portal");

                if ($conn->connect_error) {
                    die("Koneksi gagal: " . $conn->connect_error);
                }

                $sql = "SELECT article_description FROM article WHERE article_id = $article_id";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    $row = $result->fetch_assoc();
                    $text2 = $row["article_description"];
                } else {
                    echo "<p class='result danger'>Artikel tidak ditemukan!</p>";
                    $conn->close();
                    exit();
                }

                // Deteksi plagiarisme
                require_once 'plagiarism_detection.php';
                detect_plagiarism($text1, $text2);

                $conn->close();
            }
        ?>
    </div>

</body>
</html>
