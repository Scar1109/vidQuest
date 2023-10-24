package com.moderator.model;

public class Video {

    private int videoID;
    private String title;
    private String subTitle;
    private int userID;
    private String description;
    private String thumbnail;
    private String videoPath;
    private String category;
    private String visibility;
    private String status;
    private String date;
    private String time;

    public Video(int videoID, String title, String subTitle, int userID, String description, String thumbnail,
                 String videoPath, String category, String visibility, String status, String date, String time) {
        this.videoID = videoID;
        this.title = title;
        this.subTitle = subTitle;
        this.userID = userID;
        this.description = description;
        this.thumbnail = thumbnail;
        this.videoPath = videoPath;
        this.category = category;
        this.visibility = visibility;
        this.status = status;
        this.date = date;
        this.time = time;
    }

    public int getVideoID() {
        return videoID;
    }

    public String getTitle() {
        return title;
    }

    public String getSubTitle() {
        return subTitle;
    }

    public int getUserID() {
        return userID;
    }

    public String getDescription() {
        return description;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public String getVideoPath() {
        return videoPath;
    }

    public String getCategory() {
        return category;
    }

    public String getVisibility() {
        return visibility;
    }

    public String getStatus() {
        return status;
    }

    public String getDate() {
        return date;
    }

    public String getTime() {
        return time;
    }
}
