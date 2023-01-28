<?php
require_once "app/global.php";

session_start();
session_destroy();
header("location: " . BASE . "src/index.php");