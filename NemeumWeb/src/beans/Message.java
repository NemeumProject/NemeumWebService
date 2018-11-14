package beans;

import java.sql.Date;

public class Message {

	private Integer idMessage;
	private Integer idUser_From;
	private Integer idUser_To;
	private String subject;
	private String body;
	private Date dateMessage;
	public Message(Integer idMessage, Integer idUser_From, Integer idUser_To, String subject, String body,
			Date dateMessage) {
		super();
		this.idMessage = idMessage;
		this.idUser_From = idUser_From;
		this.idUser_To = idUser_To;
		this.subject = subject;
		this.body = body;
		this.dateMessage = dateMessage;
	}
	public Integer getIdMessage() {
		return idMessage;
	}
	public void setIdMessage(Integer idMessage) {
		this.idMessage = idMessage;
	}
	public Integer getIdUser_From() {
		return idUser_From;
	}
	public void setIdUser_From(Integer idUser_From) {
		this.idUser_From = idUser_From;
	}
	public Integer getIdUser_To() {
		return idUser_To;
	}
	public void setIdUser_To(Integer idUser_To) {
		this.idUser_To = idUser_To;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public Date getDateMessage() {
		return dateMessage;
	}
	public void setDateMessage(Date dateMessage) {
		this.dateMessage = dateMessage;
	}
	
	
}
