<?php
//NBA.php
$request = "https://news.google.com/news?q=nba&output=rss";
$response = file_get_contents($request);
$xml = simplexml_load_string($response);
print '<h1>' . $xml->channel->title . '</h1>';
foreach($xml->channel->item as $story)
{
  echo '<a href="' . $story->link . '">' . $story->title . '</a><br />';
  echo '<p>' . $story->description . '</p><br /><br />';
}
?>
