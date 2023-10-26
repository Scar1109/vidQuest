<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.studio.model.video"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Custom Video Player</title>
    <link rel="icon" type="image/png" href="favicon.png" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css"
    />
    <link rel="stylesheet" href="playerstyle.css" />
  </head>
  
  <body>
  <%
  video vdo = (video) session.getAttribute("video");
  %>
    <div class="custom-video-player">
      <div class="playerConatiner">
        <div class="player">
          <video
            src="<%=request.getContextPath()%>/uploads/videos/<%=vdo.getVideo()%>"
            class="video"
            playsinline
          ></video>
          <div class="show-controls">
            <div class="controls-container">
              <div class="progress-range" title="Seek">
                <div class="progress-bar"></div>
              </div>
              <div class="control-group">
                <div class="controls-left">
                  <div class="play-controls">
                    <i class="fas fa-play" title="Play" id="play-btn"></i>
                  </div>
                  <div class="volume">
                    <div class="volume-icon">
                      <i class="fas fa-volume-up" title="Mute" id="volume-icon"></i>
                    </div>
                    <div class="volume-range" title="Change volume">
                      <div class="volume-bar"></div>
                    </div>
                  </div>
                </div>
                <div class="controls-right">
                  <div class="speed" title="Playback rate">
                    <select name="playbackRate" class="player-speed">
                      <option value="0.5">0.5 x</option>
                      <option value="0.75">0.75 x</option>
                      <option value="1" selected>1 x</option>
                      <option value="1.5">1.5 x</option>
                      <option value="2">2 x</option>
                    </select>
                  </div>
                  <div class="time">
                    <span class="time-elapsed">00:00 /</span>
                    <span class="time-duration">2:38</span>
                  </div>
                  <div class="fullscreen">
                    <i class="fas fa-expand"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> 
    <!-- Script -->
    <script src="playerscript.js"></script>
  </body>
</html>
