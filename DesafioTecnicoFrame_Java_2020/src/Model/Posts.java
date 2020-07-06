package Model;

public class Posts {

    private String body;
    private Long id;
    private String title;
    private Long userId;

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        body = body;
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
                "\nBody: " + body +"\n";
    }//end toString
}//end class
