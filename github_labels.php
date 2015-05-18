<?php
// Script to populate GitHub issue labels for repositories
// OG source: https://wpxtre.me/blog/tips/standardize-issue-labels-between-your-github-repos/

// GitHub credentials
$github = array(
	'user' => 'username',
	'pw'   => 'password',
	'org'  => 'organization'
);

// Repositories
$repos = array(
	'repo1',
	'repo2',
	'repo3',
	// ...
);

// Labels and associated hex colors (without the leading #)
$labels = array(
	'closed:duplicate'    => '000000',
	'closed:invalid'      => '000000',
	'closed:resolved'     => '000000',
	'closed:wontfix'      => '000000',
	'priority:critical'   => 'ff0000',
	'priority:low'        => 'fbca04',
	'priority:medium'     => 'ffa500',
	'status:codereview'   => '006600',
	'status:designdoc'    => '66cc66',
	'status:designreview' => '006600',
	'status:development'  => '009800',
	'status:featuredoc'   => '66cc66',
	'status:new'          => 'ffb4d9',
	'status:reintegrated' => '0000ff',
	'status:testing'      => '3dcc3d',
	'type:bug'            => 'cccccc',
	'type:enhancement'    => 'cccccc',
	// ...
);

// Do it!
foreach ($repos as $repo) {
	foreach ($labels as $name => $color ) {
		$label = json_encode(array(
			'name'  => $name,
			'color' => $color,
		));
		
		system('curl -u "'. $github['user'] .':'. $github['pw'] .'" https://api.github.com/repos/'. $github['org'] .'/'. $repo .'/labels -X POST --data \''. $label .'\'');
	}
}

// end of script
