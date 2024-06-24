<?php
// Display all environment variables
echo "<h1>Environment Variables</h1>";
echo "<pre>";

// Using $_SERVER superglobal
foreach ($_SERVER as $key => $value) {
    echo "$key => $value\n";
}

// Using getenv function
echo "\nUsing getenv function:\n";
foreach (getenv() as $key => $value) {
    echo "$key => $value\n";
}
echo "</pre>";
?>
