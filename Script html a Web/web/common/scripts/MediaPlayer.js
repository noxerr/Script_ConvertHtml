// Copyright 2010 - Asuni CAD

function MediaPlayerButton_MouseOver(videoId)
{
    var button = document.getElementById(videoId + "Button");
    if(button != null)
        button.style.filter = "progid:DXImageTransform.Microsoft.Alpha(opacity=80) progid:DXImageTransform.Microsoft.AlphaImageLoader(src='../images/play.png');";
}

function MediaPlayerButton_MouseOut(videoId)
{
    var button = document.getElementById(videoId + "Button");
    if(button != null)
        button.style.filter = "progid:DXImageTransform.Microsoft.Alpha(opacity=50) progid:DXImageTransform.Microsoft.AlphaImageLoader(src='../images/play.png');";
}

function MediaPlayer_Init(videoId)
{
    var player = document.getElementById(videoId + "Player");
    if(player != null)
    {
        player.style.display = "none";
        
        var button = document.getElementById(videoId + "Button");
        if(button != null)
            button.style.display = "block";
    }
}

function MediaPlayer_Error(videoId)
{
    var container = document.getElementById(videoId);
    if(container != null)
    {
        container.innerHTML = "";
    }
}

function MediaPlayer_Play(videoId)
{
    var player = document.getElementById(videoId + "Player");
    if(player != null)
    {
        player.Play();
        player.style.display = "block";
        
        var button = document.getElementById(videoId + "Button");
        if(button != null)
            button.style.display = "none";
    }
}

function MediaPlayer_Stop(videoId)
{
    var player = document.getElementById(videoId + "Player");
    if(player != null)
    {
        if(player.style.display == "block")
        {
            player.Pause();
            player.style.display = "none";
            
            var button = document.getElementById(videoId + "Button");
            if(button != null)
                button.style.display = "block";
        }
    }
}

function MediaPlayer_CreateVideos()
{
    for(var i = 1; i < 10; i++)
    {
        var videoId = "video" + i.toString();
        
        var videoElement = document.getElementById(videoId.toString());
        if(videoElement == null)
            continue;
		
		videoElement.setAttribute("style", "float: right;");
		
		var width = videoElement.getAttribute('width');
        if(width != null)
            videoElement.style.width = width;
        else
            width = videoElement.style.width;

        var height = videoElement.getAttribute('height');
        if(height != null)
            videoElement.style.height = height;
        else
            height = videoElement.style.height;
		
        var posterSource = videoElement.getAttribute('preview');
        var videoSource = videoElement.getAttribute('src');

        var videoFileName = videoSource.substring(0, videoSource.lastIndexOf('.')) + '.mp4';

        var videoTag = '<video width="' + width + '" height="' + height + '" controls poster="' + posterSource + '">'
        videoTag += '<source src="../videos/' + videoFileName + '" type="video/mp4">';
		videoTag += '</video>'		  
		  
		videoElement.innerHTML = videoTag;
    }
}

window.onload = MediaPlayer_CreateVideos;
