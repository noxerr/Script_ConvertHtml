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
            
        var videoSource = videoElement.getAttribute('src');
        var videoImage = videoElement.getAttribute('preview');

        videoElement.style.display = "block";
        videoElement.style.background = "url(" + videoImage + ")";
        
        // Obtenemos el path al CHM
        var path = unescape(location.href.substring((location.href.search(/:/) == 2) ? 14 : 7, location.href.lastIndexOf("\\")));
        
        // Vamos a la carpeta ../../Common/Help
        path = path.substring(0, path.lastIndexOf("\\"));
        path = path.substring(0, path.lastIndexOf("\\"));
        var videoPath = path + "\\Common\\Help\\";

        var videoHTML = "";
        
        videoHTML += "  <div id='" + videoId + "Button'";
        videoHTML += "      onmouseover=\"MediaPlayerButton_MouseOver('" + videoId + "');\"";
        videoHTML += "      onmouseout=\"MediaPlayerButton_MouseOut('" + videoId + "');\"";
        videoHTML += "      onclick=\"MediaPlayer_Play('" + videoId + "');\"";
        videoHTML += "      style=\"display: none;";
        videoHTML += "             position: relative;";
        videoHTML += "             top: 0px;";
        videoHTML += "             left: 0px;";
        videoHTML += "             z-index: 1000;";
        videoHTML += "             cursor: hand;";
        videoHTML += "             margin: " + ((parseInt(height) - 128) / 2).toString() + "px " + ((parseInt(width) - 128) / 2).toString() + "px;";
        videoHTML += "             width: 128px;";
        videoHTML += "             height: 128px;";
        videoHTML += "             filter: progid:DXImageTransform.Microsoft.Alpha(opacity=50)";
        videoHTML += "                     progid:DXImageTransform.Microsoft.AlphaImageLoader(src='../images/play.png');";
        videoHTML += "            \"";
        videoHTML += "      >";
        videoHTML += "  </div>";

        videoHTML += "  <embed ";
        videoHTML += "        style=\"display: none; position: relative; top: 0px; left: 0px;\"";
        videoHTML += "        type='application/x-ms-wmv'";
        videoHTML += "        src='" + videoPath + videoSource + "'";
        videoHTML += "        name='" + videoId + "Player'";
        videoHTML += "        width='" + width + "px'";
        videoHTML += "        height='" + height + "px'";
        videoHTML += "        autostart='0'";
        videoHTML += "        stretchToFit='False'";
        videoHTML += "        uiMode='none'";
        videoHTML += "        ShowControls='0'";
        videoHTML += "        ShowAudioControls='0'";
        videoHTML += "        ShowPositionControls='False'";
        videoHTML += "        ShowTracker='False'";
        videoHTML += "        EnableContextMenu='False'";
        videoHTML += "        ShowPositionControls='False' >";
        videoHTML += "  </embed>";
        
        videoHTML += "<script language='javascript' type='text/javascript' for='" + videoId + "Player' event='Error()'>";
        videoHTML += "  MediaPlayer_Error('" + videoId + "');";
        videoHTML += "</script>";
        
        videoHTML += "<script language='javascript' type='text/javascript' for='" + videoId + "Player' event='Click()'>";
        videoHTML += "  MediaPlayer_Stop('" + videoId + "');";
        videoHTML += "</script>";

        videoHTML += "<script language='javascript' type='text/javascript' for='" + videoId + "Player' event='PlayStateChange(newStatus)'>";
        videoHTML += "    if(newStatus == 3)";
        videoHTML += "         MediaPlayer_Init('" + videoId + "');";
        videoHTML += "    if(newStatus == 0)";
        videoHTML += "         MediaPlayer_Stop('" + videoId + "');";
        videoHTML += "</script>";

        videoElement.innerHTML = videoHTML;

    }
}

window.onload = MediaPlayer_CreateVideos;
