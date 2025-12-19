<?php
$mysqli = new mysqli("localhost:3306", "root", "", "qlbandoannhanh");

if ($mysqli->connect_error) {
    die("Database connection failed: " . $mysqli->connect_error);
}
