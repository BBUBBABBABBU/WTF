package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.controller.MemberController;
import kosmo.orange.wtf.model.mapper.MemberMapper;
import kosmo.orange.wtf.model.vo.MemberMailVO;
import kosmo.orange.wtf.model.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.security.MessageDigest;

@Service
public class SendEmailService {
    @Autowired
    PasswordEncoder passwordEncoder;
    @Autowired
    MemberMapper memberMapper;
    @Autowired
    private JavaMailSender mailSender;
    @Autowired
    MemberController memCon;

    private static final String FROM_ADDRESS = "ehdus1149@gmail.com";


    public MemberMailVO createMailAndChangePassword(String userEmail, String userName) {
        System.out.println("ss 26 비밀번호 바뀌는곳");
        String str = getTempPassword();
        MemberMailVO dto = new MemberMailVO();
        dto.setAddress("ehdus1149@naver.com");
        dto.setTitle(userName + "님의 HOTTHINK 임시비밀번호 안내 이메일 입니다.");
        dto.setMessage("안녕하세요. HOTTHINK 임시비밀번호 안내 관련 이메일 입니다." + "[" + userEmail + "]" + "님의 임시 비밀번호는 "
                + str + " 입니다.");
        updatePassword(str, userEmail);
        return dto;
    }

    public void updatePassword(String str, String userEmail) {
        String pw = str;
        String id = null;
        try {
            MemberVO member =memberMapper.idcheckMember(userEmail);
            id = member.getMemberId();
            System.out.println("아이디찾아오기 id"+id);
            String encodedPass=memCon.passwordTemp(pw);

            member.setPassword(encodedPass);
            int result =memberMapper.updateUserPassword(member);
        } catch (Exception e) {
            e.printStackTrace();
        }


    }


    public String getTempPassword() {
        char[] charSet = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f',
                'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};

        String str = "";

        int idx = 0;
        for (int i = 0; i < 10; i++) {
            idx = (int) (charSet.length * Math.random());
            str += charSet[idx];
        }
        System.out.println("비번"+str);
        return str;
    }




        public static String encryptSHA256(String s) {
            return encrypt(s, "SHA-256");
        }

        public static String encryptMD5(String s) {
            return encrypt(s, "MD5");
        }

        public static String encrypt(String s, String messageDigest) {
            try {
                MessageDigest md = MessageDigest.getInstance(messageDigest);
                byte[] passBytes = s.getBytes();
                md.reset();
                byte[] digested = md.digest(passBytes);
                StringBuffer sb = new StringBuffer();
                for (int i = 0; i < digested.length; i++) sb.append(Integer.toString((digested[i]&0xff) + 0x100, 16).substring(1));
                return sb.toString();
            } catch (Exception e) {
                return s;
            }
        }


    public void mailSend(MemberMailVO mailDto){
        System.out.println("이멜 전송 완료!");
        SimpleMailMessage message = new SimpleMailMessage();
        System.out.println(mailDto.getAddress());
        message.setTo(mailDto.getAddress());
        message.setFrom(SendEmailService.FROM_ADDRESS);
        message.setSubject(mailDto.getTitle());
        message.setText(mailDto.getMessage());
        System.out.println(message.getTo());
        mailSender.send(message);
    }
}
