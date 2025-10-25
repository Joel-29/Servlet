<?php
$xml = simplexml_load_file("ex10.xml");

echo "<h1>Cricket Players</h1>";
echo "<table border='1' cellpadding='10' cellspacing='0'>";
echo "<tr><th>Name</th><th>Country</th><th>Role</th><th>Matches</th></tr>";

foreach($xml->player as $player) {
    echo "<tr>";
    echo "<td>" . $player->name . "</td>";
    echo "<td>" . $player->country . "</td>";
    echo "<td>" . $player->role . "</td>";
    echo "<td>" . $player->matches . "</td>";
    echo "</tr>";
}

echo "</table>";
?>
