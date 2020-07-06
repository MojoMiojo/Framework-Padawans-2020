package Model;

public class Albums {

    private Long id;
    private Long userId;
    private String title;

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
                "\nTitle: " + title +"\n";
    }//end toString

}//end class
