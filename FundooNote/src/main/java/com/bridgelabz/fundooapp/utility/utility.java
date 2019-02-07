package com.bridgelabz.fundooapp.utility;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class utility 
{
	/**This method is to encrypt the password using MD5 algorithm 
	 * @param input is user input which you wants to encrypt
	 * @return
	 */
	public static String encryption(String input)	
	{
		try { 			  
            // Static getInstance method is called with hashing MD5 
            MessageDigest md = MessageDigest.getInstance("MD5"); 
  
            // digest() method is called to calculate message digest 
            //  of an input digest() return array of byte 
            byte[] messageDigest = md.digest(input.getBytes()); 
  
            // Convert byte array into signum representation 
            BigInteger no = new BigInteger(1, messageDigest); 
  
            // Convert message digest into hex value 
            String hashtext = no.toString(16); 
            while (hashtext.length() < 32) { 
                hashtext = "0" + hashtext; 
            } 
            return hashtext; 
        }    
        // For specifying wrong message digest algorithms 
        catch (NoSuchAlgorithmException e) { 
            throw new RuntimeException(e); 
        }
	}
	
	/**This method send the mail to particular mail id entered by user 
	 * @param toEmail is mail id entered by user where you want to sent mail
	 */
	public static boolean emailSend(String toEmail)
	{
		boolean isSent=false;
		final String fromEmail = "aishwarya.munde14@gmail.com"; //requires valid gmail id
		final String password = "Aishu1410"; // correct password for gmail id
		//final String toEmail = request.getParameter("emailid");//"kccaishwarya2012@gmail.com"; // can be any email id 
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com"); 
		props.put("mail.smtp.port", "587"); 
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");			
		Authenticator auth = new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(fromEmail, password);			
			}
		};		
		Session session = Session.getInstance(props, auth);		
		try
	    {
			//This class is to create messge
			MimeMessage msg = new MimeMessage(session);	    
		    msg.setFrom(new InternetAddress("no_reply@example.com", "NoReply-JD"));
		    msg.setReplyTo(InternetAddress.parse("no_reply@example.com", false));
		    msg.setSubject("Aishwarya", "UTF-8");
		    //setText method is to write message which we want to send with that mail 
		    msg.setText("http://localhost:8081/LoginMvc/index.jsp", "UTF-8");
		    msg.setSentDate(new Date());
		    msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail, false));
		    System.out.println("Message is ready");
		    Transport.send(msg);  		//This method send the mail
		    System.out.println("Email Sent Successfully!!");
		    isSent = true;
		  }
		  catch (Exception e) {
		      e.printStackTrace();
		  }
		return isSent;	
	}
}
