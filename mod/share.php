<?php

require_once('bbcode.php');

function share_init(&$a) {

	$post_id = ((argc() > 1) ? intval(argv(1)) : 0);
	if((! $post_id) || (! local_user()))
		killme();

	$r = q("SELECT * from item WHERE id = %d AND uid = %d and item_restrict = 0 LIMIT 1",
		intval($post_id),
		intval(local_user())
	);
	if((! $r) || $r[0]['item_private'])
		killme();

	xchan_query($r);

	if (strpos($r[0]['body'], "[/share]") !== false) {
		$pos = strpos($r[0]['body'], "[share");
		$o = substr($r[0]['body'], $pos);
	} else {
		$o = "[share author='".urlencode($r[0]['author']['xchan_name']).
			"' profile='".$r[0]['author']['xchan_url'] .
			"' avatar='".$r[0]['author']['xchan_photo_s'].
			"' link='".$r[0]['plink'].
			"' posted='".$r[0]['created']."']\n";
		if($r[0]['title'])
			$o .= '[b]'.$r[0]['title'].'[/b]'."\n";
		$o .= $r[0]['body'];
		$o.= "[/share]";
	}

	echo $o;
	killme();

}
