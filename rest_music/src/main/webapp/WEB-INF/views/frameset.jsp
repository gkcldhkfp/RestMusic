<!DOCTYPE html>
<html>

<head>
	<title>Frameset Example</title>
</head>
<frameset rows="*,110px">
	<frame src="./album/detail?albumId=1" name="mainFrame" id="mainFrame"/>
	<frame src="./player/playerPage" name="songFrame" id="songFrame" noresize/>
</frameset>
<noframes>

	<body>Your browser does not support frames.</body>
</noframes>

</html>