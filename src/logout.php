<?php
session_start();
session_destroy();
header("location: /sito-viaggi/src/index.php");