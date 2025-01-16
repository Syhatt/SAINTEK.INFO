<?php
function detect_plagiarism($text1, $text2) {
    // Proses untuk menghitung kesamaan teks (menggunakan Cosine Similarity)
    // Di sini kita bisa menggunakan pustaka PHP eksternal atau mengonversi logika Python ke PHP
    // Contoh implementasi sederhana menggunakan cosine similarity di PHP

    // Bersihkan teks
    $text1 = strtolower($text1);
    $text2 = strtolower($text2);

    // Pisahkan teks menjadi kata-kata
    $words1 = str_word_count($text1, 1);
    $words2 = str_word_count($text2, 1);

    // Hitung frekuensi kata
    $freq1 = array_count_values($words1);
    $freq2 = array_count_values($words2);

    // Hitung dot product dan magnitudo dari dua vektor
    $dot_product = 0;
    $magnitude1 = 0;
    $magnitude2 = 0;

    foreach ($freq1 as $word => $count1) {
        if (isset($freq2[$word])) {
            $dot_product += $count1 * $freq2[$word];
        }
        $magnitude1 += $count1 * $count1;
    }

    foreach ($freq2 as $count2) {
        $magnitude2 += $count2 * $count2;
    }

    $magnitude1 = sqrt($magnitude1);
    $magnitude2 = sqrt($magnitude2);

    // Hitung cosine similarity
    $cosine_similarity = $dot_product / ($magnitude1 * $magnitude2);

    // Tampilkan hasil
    if ($cosine_similarity > 0.8) {
        echo "<div class='result danger'>Plagiarisme terdeteksi! Cosine Similarity: " . round($cosine_similarity, 4) . "</div>";
    } else {
        echo "<div class='result success'>Tidak ada plagiarisme yang terdeteksi. Cosine Similarity: " . round($cosine_similarity, 4) . "</div>";
    }
}
?>
