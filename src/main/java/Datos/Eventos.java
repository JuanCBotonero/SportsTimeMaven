package Datos;

public class Eventos {

    private long id;
    private String start_date;
    private String end_date;
    private String text; // Descripción/nombre
    private String subject; //Color

    public Eventos() {
    }

    // Constructor sin id.
    public Eventos(String start_date, String end_date, String text, String subject) {
        this.start_date = start_date;
        this.end_date = end_date;
        this.text = text;
        this.subject = subject;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
    
    public String getStart_date() {
        return start_date;
    }

    public void setStart_date(String start_date) {
        this.start_date = start_date;
    }

    public String getEnd_date() {
        return end_date;
    }

    public void setEnd_date(String end_date) {
        this.end_date = end_date;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    @Override
    public String toString() {
        return "Eventos{" + "id=" + id + ", start_date=" + start_date + ", end_date=" + end_date + ", text=" + text + ", subject=" + subject + '}';
    }

}
