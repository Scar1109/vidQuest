<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.comment.model.comment"%>
<%@page import="java.util.List"%>


<!DOCTYPE html>
<html lang="en" style="--vh: 7.07px;">
<head>

<title>vidPlay</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="views/videoPlayer/asserts/client.58bcd74d963009b6d099.css"
	media="all">
	<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="videoPlayer/asserts/mystyles.css">

	<style>
		#vimeoIframe {
		overflow: hidden;
}
	</style>
</head>
	<body class="hydration-complete">
		<div id="app">
			<div data-hid="root">
				<div class="container--+ahue">
					<div class="page--qGgEw contentContainer--FZrly">
						<div class="content--Us8Ot">
							<!-- Video section -->
							<div class="mediaSection--yiQ4N">
								<div class="mediaItemContainer--3BwC2">
									<div class="container--pycH7" data-w="3840" data-h="2160"
										style="padding-bottom: min(56.25%, 64vh, 2160px); width: min(3840px, 113.778vh, 100vw, 100%); max-height: 2160px;">
										<iframe id="vimeoIframe"
											src="views/videoPlayer/web-video-player/player.html"
											allowfullscreen="" data-ready="true"></iframe>
									</div>
								</div>
							</div>
							<div class="mainSectionGroup--DfLUW">
								<!-- Description -->
								<div class="descriptionSection--HSyfs">
									<div class="headingRow--MzaSD">
										<h1 class="heading--oy-tA">Mount Fuji morning clouds free
											stock video. Free for use &amp; download.</h1>
									</div>
								</div>
								<!-- Comment count -->
								<div class="commentsSection--volyd commentsSection--s+lVy">
									<div class="commentCount--h7TIp">73 comments</div> 
									<div>
										<div class="container--nL7QW">
											<div>
												<div class="container--RXy5A default--iYncq">
													<img
														src="views/videoPlayer/asserts/orange.svg"
														class="avatar--+DPkq">
												</div>
											</div>
											<div class="column--Hn2Ah">
												<div class="inputSection--l-yAT">
													<div class="textInputContainer--UKemN">
														<div class="textInputField--xIcYM">
														
														
														<form id= "comment" action = "${pageContext.request.contextPath}/commentservlet" method= "post"  >
														     <textarea
																class="textInput--yG-0W textArea---vB9y input--8uJYQ"
																name ="coms"
																placeholder="Add your comments..."
																style="height: 19px !important;"></textarea>
																
																<input type = "submit" value = "Post">
														
														</form>	
														
															
																
														</div>
													</div>
												</div>
												<div class="buttonRow--pqIC9"></div>
											</div>
										</div>
									</div>
																		
									<!-- Comment section -->
									<div class="commentsList--lpM12 scrolling--Ic5bb">
									
									 	
									<%
									try {
										
									
										
                                        List<comment> Comments = (List<comment>) request.getAttribute("Comment");//customers means comment
                                    	if (Comments != null && ! Comments.isEmpty()) {
                                        
                                        for (comment comm : Comments) {
                                        	
                                        	
                                     %>
                                     
                         
										<div class="commentContainer--wcqd2">
											<div>
												<a class="container--RXy5A default--iYncq hoverState--vIDz9"
													href="https://pixabay.com/users/u_4bw9j0oljj-40017775/"><img
													src="views/videoPlayer/asserts/green.svg"
													class="avatar--+DPkq"></a>
											</div>
											<div class="commentInner--ppayY">
												<div class="commentTitles--d7obE">
													<a href="https://pixabay.com/users/u_q46lh2u7s7-39675521/" target="_blank" class="commentCommenterNameField--eu7bd">u_q46lh2u7s7</a>
													<div class="commentTime--KEQg1">8 days ago</div>
													<div class="contextMenu--fbIC-">
														<div class="container--YKYLB">
															<div class="triggerWrapper--NACCC">
																<button class="contextMenuTrigger--1BjBf buttonBase--r4opq tertiaryButton--+4ehJ base--jzyee light--uBcBI iconOnly--QRahF" type="button" id="dropdown-button">
																	<ion-icon name="ellipsis-horizontal-outline"></ion-icon>
																</button>
															</div>
															<!-- Add the dropdown menu here -->
															<div class="dropdown" id="dropdown-menu">
																<ul>
																	<li><a href="#" id="edit-option">Edit</a></li>
																	<li><a href="#" id="delete-option">Delete</a></li>
																</ul>
															</div>
															<!-- End of dropdown menu -->
														</div>
													</div>
												</div>
												<div class="text--Ja8D3"><%=comm.getComment() %></div>
											</div>
											
										</div>
										
										<%
                                 
                                        }
                                    	} else {
                                    		
                                    		%>                    		
                                    		<div class="commentContainer--wcqd2"> <div class="text--Ja8D3">NO comments</div>   </div>
                                    		<% 
                                    	}
                                        }
									     catch (Exception e) {
									    // Log the exception
									    e.printStackTrace();
									                        }
									
                                       %>
										
										
										
										
										<div class="commentContainer--wcqd2">
											<div>
												<a class="container--RXy5A default--iYncq hoverState--vIDz9"
													href="https://pixabay.com/users/u_oql2bnz4gy-39676539/"><img
													src="views/videoPlayer/asserts/yellow.svg"
													class="avatar--+DPkq"></a>
											</div>
											<div class="commentInner--ppayY">
												<div class="commentTitles--d7obE">
													<a href="https://pixabay.com/users/u_oql2bnz4gy-39676539/"
														target="_blank" class="commentCommenterNameField--eu7bd">u_oql2bnz4gy</a>
													<div class="commentTime--KEQg1">7 day ago</div>
													<div class="contextMenu--fbIC-">
														<div class="container--YKYLB">
															<div class="triggerWrapper--NACCC">
																<button
																	class="contextMenuTrigger--1BjBf buttonBase--r4opq tertiaryButton--+4ehJ base--jzyee light--uBcBI iconOnly--QRahF"
																	type="button">
																	<ion-icon name="ellipsis-horizontal-outline"></ion-icon>
																</button>
															</div>
															<div
																class="dropdown--QzC2F light--boaNg dropdown----12s right--Yg1-e hidden--Q5vOS"></div>
														</div>
													</div>
												</div>
												<div class="text--Ja8D3">thanks a lot</div>
											</div>
										</div>
										<div class="commentContainer--wcqd2">
											<div>
												<a class="container--RXy5A default--iYncq hoverState--vIDz9"
													href="https://pixabay.com/users/u_q46lh2u7s7-39675521/"><img
													src="views/videoPlayer/asserts/orange.svg"
													class="avatar--+DPkq"></a>
											</div>
											<div class="commentInner--ppayY">
												<div class="commentTitles--d7obE">
													<a href="https://pixabay.com/users/u_q46lh2u7s7-39675521/"
														target="_blank" class="commentCommenterNameField--eu7bd">u_q46lh2u7s7</a>
													<div class="commentTime--KEQg1">8 day ago</div>
													<div class="contextMenu--fbIC-">
														<div class="container--YKYLB">
															<div class="triggerWrapper--NACCC">
																<button
																	class="contextMenuTrigger--1BjBf buttonBase--r4opq tertiaryButton--+4ehJ base--jzyee light--uBcBI iconOnly--QRahF"
																	type="button">
																	<ion-icon name="ellipsis-horizontal-outline"></ion-icon>
																</button>
															</div>
															<div
																class="dropdown--QzC2F light--boaNg dropdown----12s right--Yg1-e hidden--Q5vOS"></div>
														</div>
													</div>
												</div>
												<div class="text--Ja8D3">thanks a lot</div>
											</div>
										</div>
										<div class="commentContainer--wcqd2">
											<div>
												<a class="container--RXy5A default--iYncq hoverState--vIDz9"
													href="https://pixabay.com/users/u_q46lh2u7s7-39675521/"><img
													src="views/videoPlayer/asserts/orange.svg"
													class="avatar--+DPkq"></a>
											</div>
											<div class="commentInner--ppayY">
												<div class="commentTitles--d7obE">
													<a href="https://pixabay.com/users/u_q46lh2u7s7-39675521/"
														target="_blank" class="commentCommenterNameField--eu7bd">u_q46lh2u7s7</a>
													<div class="commentTime--KEQg1">8 day ago</div>
													<div class="contextMenu--fbIC-">
														<div class="container--YKYLB">
															<div class="triggerWrapper--NACCC">
																<button
																	class="contextMenuTrigger--1BjBf buttonBase--r4opq tertiaryButton--+4ehJ base--jzyee light--uBcBI iconOnly--QRahF"
																	type="button">
																	<ion-icon name="ellipsis-horizontal-outline"></ion-icon>
																</button>
															</div>
															<div
																class="dropdown--QzC2F light--boaNg dropdown----12s right--Yg1-e hidden--Q5vOS"></div>
														</div>
													</div>
												</div>
												<div class="text--Ja8D3">thanks</div>
											</div>
										</div>
										<div class="commentContainer--wcqd2">
											<div>
												<a class="container--RXy5A default--iYncq hoverState--vIDz9"
													href="https://pixabay.com/users/u_diaunvisfx-34809769/"><img
													src="views/videoPlayer/asserts/yellow.svg"
													class="avatar--+DPkq"></a>
											</div>
											<div class="commentInner--ppayY">
												<div class="commentTitles--d7obE">
													<a href="https://pixabay.com/users/u_diaunvisfx-34809769/"
														target="_blank" class="commentCommenterNameField--eu7bd">u_diaunvisfx</a>
													<div class="commentTime--KEQg1">9 day ago</div>
													<div class="contextMenu--fbIC-">
														<div class="container--YKYLB">
															<div class="triggerWrapper--NACCC">
																<button
																	class="contextMenuTrigger--1BjBf buttonBase--r4opq tertiaryButton--+4ehJ base--jzyee light--uBcBI iconOnly--QRahF"
																	type="button">
																	<ion-icon name="ellipsis-horizontal-outline"></ion-icon>
																</button>
															</div>
															<div
																class="dropdown--QzC2F light--boaNg dropdown----12s right--Yg1-e hidden--Q5vOS"></div>
														</div>
													</div>
												</div>
												<div class="text--Ja8D3">Thanks</div>
											</div>
										</div> 
									</div> 
									<!--  End of comment section -->
								</div>
								<!-- Tags Section -->
								<div class="tagsSection--8gH54">
									<a
										class="light--uBcBI tagButton--7WJVy base--jzyee light--uBcBI"
										target="_blank"
										href="https://pixabay.com/videos/search/mount%20fuji/"> <span
										class="label--Ngqjq">mount fuji</span></a><a
										class="light--uBcBI tagButton--7WJVy base--jzyee light--uBcBI"
										target="_blank"
										href="https://pixabay.com/videos/search/morning/"> <span
										class="label--Ngqjq">morning</span></a><a
										class="light--uBcBI tagButton--7WJVy base--jzyee light--uBcBI"
										target="_blank"
										href="https://pixabay.com/videos/search/clouds/"> <span
										class="label--Ngqjq">clouds</span></a><a
										class="light--uBcBI tagButton--7WJVy base--jzyee light--uBcBI"
										target="_blank" href="https://pixabay.com/videos/search/japan/">
										<span class="label--Ngqjq">japan</span>
									</a><a
										class="light--uBcBI tagButton--7WJVy base--jzyee light--uBcBI"
										target="_blank"
										href="https://pixabay.com/videos/search/landscape/"> <span
										class="label--Ngqjq">landscape</span></a>
								</div>
							</div>
							<!-- End of tags section -->
						</div>
						<!-- Profile section -->
						<div class="outerContainer--nDf4+">
							<div class="innerContainer--vT+tu">
								<div class="sidePanel--XFASR">
									<div>
										<div class="row--WPKFz editDownloadButtons--ox-FE">
											<div class="container--YKYLB fullWidthContainer--a8QAe">
												<div class="triggerWrapper--NACCC">
													<button
														class="fullWidthTrigger--c4aeO buttonBase--r4opq primaryButton--h-+gi base--jzyee light--uBcBI"
														type="button">
														<span class="label--Ngqjq">Download &nbsp;</span> <ion-icon name="chevron-down-outline"></ion-icon>
													</button>
												</div>
												<div
													class="dropdown--QzC2F light--boaNg dropdown--N-MrI right--Yg1-e hidden--Q5vOS"></div>
											</div>
										</div>
									</div>
									<hr>
									<div>
										<div class="container--LnIck">
											<div class="tooltipTriggerWrapper--Afzn1 textButton--JfKAj">
												<button
													class="textButtonInner--hy97m squareIconAndTextButton--LErXp light--uBcBI base--jzyee light--uBcBI">
													<span class="label--Ngqjq"><ion-icon name="heart-outline"></ion-icon>
													<div class="text--MrmlD">417</div></span>
												</button>
											</div>
											<div class="tooltipTriggerWrapper--Afzn1 textButton--JfKAj">
												<button
													class="textButtonInner--hy97m squareIconAndTextButton--LErXp light--uBcBI base--jzyee light--uBcBI">
													<span class="label--Ngqjq"><ion-icon name="bookmark-outline"></ion-icon>
													<div class="text--MrmlD">Save</div></span>
												</button>
											</div>
											<div class="tooltipTriggerWrapper--Afzn1">
												<button
													class="squareIconButton--pf3pA light--uBcBI base--jzyee light--uBcBI">
													<span class="label--Ngqjq"><ion-icon name="chatbox-outline" size="small"></ion-icon></span>
												</button>
											</div>
											<div class="tooltipTriggerWrapper--Afzn1">
												<button
													class="squareIconButton--pf3pA light--uBcBI base--jzyee light--uBcBI">
													<span class="label--Ngqjq"><ion-icon name="share-social-outline" size="small"></ion-icon>
												</button>
											</div>
										</div>
										<div class="row--WPKFz">
											<div class="container--D5Giy">
												<div class="row--MbTZK">
													<span class="rowLabel--VPSZl">Views</span><span>86,320</span>
												</div>
												<div class="row--MbTZK">
													<span class="rowLabel--VPSZl">Downloads</span><span>28,417</span>
												</div>
											</div>
										</div>
									</div>
									<hr>
									<div>
										<div class="row--WPKFz">
											<div class="container--+RXOU">
												<div class="container--KMomB fullWidth---6Rqv">
													<div>
														<a class="container--RXy5A default--iYncq avatar--4wZk+"
															href="#"
															target="_blank"><img
															src="views/videoPlayer/asserts/07-49-26-304_96x96.jpg"
															class="avatar--+DPkq" alt="Kanenori"></a>
													</div>
													<div class="usernameFollowersContainer--0odKZ">
														<a href="https://pixabay.com/users/kanenori-4749850/"
															target="_blank" class="userName--owby3">Kanenori</a><span
															class="followers--SKQqw">4,139 followers</span>
													</div>
													<button
														class="follow--h2qlj buttonBase--r4opq tertiaryButton--+4ehJ base--jzyee light--uBcBI">
														<ion-icon name="person-add-outline"></ion-icon>
														<span class="label--Ngqjq"> &nbsp Follow</span>
													</button>
												</div>
												
												<form method="get"
													action="https://www.buymeacoffee.com/miurak38"
													target="_blank">
													<button
														class="fullWidth--sumFd buttonBase--r4opq secondaryButton--xk9cO base--jzyee light--uBcBI"
														type="submit">
														<span class="label--Ngqjq">Donate</span>
													</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>
			</div>
		</div>
		<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
		<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
		<script>
			document.addEventListener("DOMContentLoaded", function() {
			const dropdownButton = document.getElementById("dropdown-button");
			const dropdownMenu = document.getElementById("dropdown-menu");
			const editOption = document.getElementById("edit-option");
			const deleteOption = document.getElementById("delete-option");

			dropdownButton.addEventListener("click", function(event) {
				event.stopPropagation();
				dropdownMenu.style.display = "block";
				document.addEventListener("click", closeDropdown);
			});

			editOption.addEventListener("click", function(event) {
				event.preventDefault();
				// Add your edit action here
			});

			deleteOption.addEventListener("click", function(event) {
				event.preventDefault();
				// Add your delete action here
			});

			function closeDropdown() {
				dropdownMenu.style.display = "none";
				document.removeEventListener("click", closeDropdown);
			}
			});

			</script>
			
			
	</body>
</html>