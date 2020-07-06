package Model;

public class TODOs {

    private Long userId;
    private Long id;
    private String title;
    private Boolean completed;

    public Boolean getCompleted() {
        return completed;
    }

    public void setCompleted(Boolean completed) {
        this.completed = completed;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return  "UserId: " + userId +
                "\nId: " + id +
                "\nTitle: " + title +
                "\nCompleted: "+ completed +"\n";
    }//end toString

}//end class
