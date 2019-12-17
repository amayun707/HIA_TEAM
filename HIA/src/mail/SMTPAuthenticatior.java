package mail;
 
import java.util.Properties;
import java.util.Random;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
 
public class SMTPAuthenticatior extends Authenticator{
	
	public String getRandomPassword( int length ){
		
        char[] charaters = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
        		'0','1','2','3','4','5','6','7','8','9'};
        
        StringBuffer sb = new StringBuffer();
        
        Random rn = new Random();
        
        for( int i = 0 ; i < length ; i++ ){
            sb.append( charaters[ rn.nextInt( charaters.length ) ] );
        }
        
        return sb.toString();
    }
	
	public String sendMail(String email) {
		
		String from = "amayun707@gmail.com";
		String to = email;
		String subject = "뜨아아 사이트 이메일 인증번호입니다.";
		String random = getRandomPassword(15);
		String content = "인증번호 : "+ random + " 입니다.";
		 
		Properties p = new Properties();
		 
		p.put("mail.smtp.host", "smtp.gmail.com");
		 
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.port", "465");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");
		 
		try{
		    Authenticator auth = new SMTPAuthenticatior();
		    
		    Session ses = Session.getInstance(p, auth);
		    ses.setDebug(true);
		    
		    MimeMessage msg = new MimeMessage(ses); // 메일의 내용을 담을 객체
		    msg.setSubject(subject); // 제목
		    
		    Address fromAddr = new InternetAddress(from);
		    msg.setFrom(fromAddr); // 보내는 사람
		    
		    Address toAddr = new InternetAddress(to);
		    msg.addRecipient(Message.RecipientType.TO, toAddr); // 받는 사람
		    msg.setContent(content, "text/html;charset=UTF-8"); // 내용과 인코딩
		    Transport.send(msg); // 전송
		}
		catch(Exception e){
		    e.printStackTrace();
		}
		return random;
	}

    @Override
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication("amayun707@gmail.com","aigkwfyosqdamvix");
    }
}


