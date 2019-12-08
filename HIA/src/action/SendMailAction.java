package action;

import java.awt.FileDialog;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Properties;
import java.util.StringTokenizer;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import vo.ByteArrayDataSource;

import vo.ActionForward;

public class SendMailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("mailattch");
		
		ActionForward forward = null;
		
		if (request.getContentType().startsWith("multipart/form-data")) {
			
			try {
				HashMap data = getMailData(request, response);
				sendMail(data);
	
				forward = new ActionForward();
				forward.setRedirect(true);
				forward.setPath("Main.me");
				
				} catch (MessagingException ex) {
					throw new ServletException(ex);
				}
			
		}else{
		
		}
		return forward;
	}

// -----------------------------------------------------------------------------------

	private HashMap getMailData(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, MessagingException {
		System.out.println("getMailData");
		String boundary = request.getHeader("Content-Type");

		int pos = boundary.indexOf('=');
		boundary = boundary.substring(pos + 1);
		boundary = "--" + boundary;
		ServletInputStream in = request.getInputStream();
		byte[] bytes = new byte[512];
		int state = 0;
		ByteArrayOutputStream buffer = new ByteArrayOutputStream();
		String name = null, value = null, filename = null, contentType = null;
		HashMap mailData = new HashMap();

		int i = in.readLine(bytes, 0, 512);
		while (-1 != i) {
			String st = new String(bytes, 0, i);
			if (st.startsWith(boundary)) {
				state = 0;
				if (name != null) {
					if (value != null) {
						mailData.put(name, value.substring(0, value.length() - 2));
					} else if (buffer.size() > 2) {
						MimeBodyPart bodyPart = new MimeBodyPart();
						DataSource ds = new ByteArrayDataSource(buffer.toByteArray(), contentType, filename);
						bodyPart.setDataHandler(new DataHandler(ds));
						bodyPart.setDisposition("attachment; filename=\"" + filename + "\"");
						bodyPart.setFileName(filename);
						System.out.println("filename1 : "+filename);
						mailData.put(name, bodyPart);
						
					}
					name = null;
					value = null;
					filename = null;
					contentType = null;
					buffer = new ByteArrayOutputStream();
				}
			} else if (st.startsWith("Content-Disposition: form-data") && state == 0) {
				StringTokenizer tokenizer = new StringTokenizer(st, ";=\"");
				while (tokenizer.hasMoreTokens()) {
					String token = tokenizer.nextToken();
					if (token.startsWith(" name")) {
						name = tokenizer.nextToken();
						state = 2;
					} else if (token.startsWith(" filename")) {
						filename = tokenizer.nextToken();
						System.out.println("filename2 : "+filename);
						StringTokenizer ftokenizer = new StringTokenizer(filename, "\\/:");
						filename = ftokenizer.nextToken();
						while (ftokenizer.hasMoreTokens())
							filename = ftokenizer.nextToken();
						state = 1;
						break;
					}
				}
			} else if (st.startsWith("Content-Type") && state == 1) {
				pos = st.indexOf(":");
				contentType = st.substring(pos + 2, st.length() - 2);
			} else if (st.equals("\r\n") && state == 1)
				state = 3;
			else if (st.equals("\r\n") && state == 2)
				state = 4;
			else if (state == 4)
				value = value == null ? st : value + st;
			else if (state == 3)
				buffer.write(bytes, 0, i);
			i = in.readLine(bytes, 0, 512);
		}
		System.out.println(mailData.values().iterator());
		return mailData;
	}

	
	private void sendMail(HashMap mailData) throws MessagingException {
		System.out.println("sendMail");
		// 리턴받아 넘어온 mailData를 넣어줌
		// 잘려서 가공되서 HashMap에 담긴거를 sendMail 매개변수에 넣어서 실행 
		
		// Properties = 속성 
		// 속성을 담기위한 Properties 객체생성
		Properties props = new Properties();
		
		props.put("mail.smtp.starttls.enable", "true");

		props.put("mail.smtp.auth", "true");
		
		props.put("mail.smtp.host", "smtp.gmail.com");

		props.put("mail.smtp.port", "587");
		
		props.put("mail.mime.charset", "EUC-KR");

		props.put("mail.mime.encodefilename", "true");
		
		//접속주소 포트번호 설정
		

		Authenticator auth = new MyAuthentication(); // 메일인증받는코드
		
		Session session = Session.getDefaultInstance(props, auth); //인증받은정보와 props(속성값) 을 session 에 넣음
		
		MimeMessage msg = new MimeMessage(session); // MimeMessage에 session 을 넣음
		
		
		//보내는 사람 세팅 // 
		  msg.setFrom(new InternetAddress("arrpam2006@gmail.com"));



		  // 받는사람 (메일 주소의 유효성 확인) // 받는사람메일 주소 //테스트
		  String[] sendMailAddress = new String[] { "arrpam2006@gmail.com", "arr_pam_2006@naver.com"  };

		  //메일정보담아서 배열로 만듬
		  InternetAddress[] toAddress = new InternetAddress[sendMailAddress.length];
		  
		  
		  //toAddress 0번쨰 arrpam2006@gmail.com // toAddress1번째 arr_pam_2006@naver.com 담겨서
		  for (int i = 0; i < toAddress.length; i++) {
		   toAddress[i] = new InternetAddress(sendMailAddress[i]);
		  }
		  
		  //메일보내는 타입지정 , 받는사람 보내는사람 주소 넣기
		  msg.setRecipients(MimeMessage.RecipientType.TO, toAddress);

		//메일제목이나 한글설정 
		msg.setHeader("Content-Type", "text/plain; charset=UTF-8");
		
        //뷰페이지에서 가져온 제목넣기
        msg.setSubject((String)mailData.get("subject"));
       
        //첨부파일이 없으면 내용만 전송
        if(mailData.get("attachment") == null){
        	
                 msg.setText((String)mailData.get("body"));
            
        }else{
        	  
        	  // 첨부파일을 추가하면 내용에 미리보기가 나와야하므로 
        	  // body = 내용
        	  // attachment = 첨부파일 을 같이넣어준다 
        	  BodyPart body = new MimeBodyPart();
              BodyPart attachment = (BodyPart)mailData.get("attachment");
              System.out.println(attachment);
              body.setText((String)mailData.get("body"));
              MimeMultipart multipart = new MimeMultipart();
              multipart.addBodyPart(body);
              multipart.addBodyPart(attachment);
              msg.setContent(multipart, "text/plain; charset=UTF-8");
        }
        //전송
        Transport.send(msg);
	}

	class MyAuthentication extends Authenticator {

		private PasswordAuthentication pa;
		private String id;
		private String pw;

		private MyAuthentication() {
			
			// 보내는 사람 메일 인증
			id = "arrpam2006"; 
			pw = "dltkdguq1492@"; 
			pa = new PasswordAuthentication(id, pw);
		}
		
		public PasswordAuthentication getPasswordAuthentication() {
			return pa;
		}
	}

}
