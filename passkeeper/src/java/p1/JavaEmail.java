package p1;



import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class JavaEmail {

	Properties emailProperties;
	Session mailSession;
	MimeMessage emailMessage;

	public static void main(String dest,String otp) throws AddressException,
			MessagingException {

		JavaEmail javaEmail = new JavaEmail();

		javaEmail.setMailServerProperties();
		javaEmail.createEmailMessage(dest,otp);
		javaEmail.sendEmail();
	}

	public void setMailServerProperties() {

		String emailPort = "587";//gmail's smtp port

		emailProperties = System.getProperties();
		emailProperties.put("mail.smtp.port", emailPort);
		emailProperties.put("mail.smtp.auth", "true");
		emailProperties.put("mail.smtp.starttls.enable", "true");

	}

	public void createEmailMessage(String dest,String otp) throws AddressException,
			MessagingException {
		
		String emailSubject = "Passkepper Email verification";
		String emailBody = "Your one type password is "+otp;

		mailSession = Session.getDefaultInstance(emailProperties, null);
		emailMessage = new MimeMessage(mailSession);

		
			emailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(dest));
	

		emailMessage.setSubject(emailSubject);
		emailMessage.setContent(emailBody, "text/html");//for a html email
		//emailMessage.setText(emailBody);// for a text email

	}

	public void sendEmail() throws AddressException, MessagingException {

		String emailHost = "smtp.gmail.com";
		String fromUser = "passkeeper1801@gmail.com";//just the id alone without @gmail.com
		String fromUserEmailPassword = "Passkeeper1801@";

		Transport transport = mailSession.getTransport("smtp");

		transport.connect(emailHost, fromUser, fromUserEmailPassword);
		transport.sendMessage(emailMessage, emailMessage.getAllRecipients());
		transport.close();
		System.out.println("Email sent successfully.");
	}

}