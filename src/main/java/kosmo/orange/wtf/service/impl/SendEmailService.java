package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.MemberMapper;
import kosmo.orange.wtf.model.vo.MemberMailVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;

import org.springframework.stereotype.Service;

import java.security.MessageDigest;

@Service
public class SendEmailService {

    @Autowired
    MemberMapper memberMapper;
//   private JavaMailSender mailSender;
    private static final String FROM_ADDRESS = "본인의 이메일 주소를 입력하세요!";

//
//    public MemberMailVO createMailAndChangePassword(String userEmail, String userName) {
//        String str = getTempPassword();
//        MemberMailVO dto = new MemberMailVO();
//        dto.setAddress(userEmail);
//        dto.setTitle(userName + "님의 HOTTHINK 임시비밀번호 안내 이메일 입니다.");
//        dto.setMessage("안녕하세요. HOTTHINK 임시비밀번호 안내 관련 이메일 입니다." + "[" + userName + "]" + "님의 임시 비밀번호는 "
//                + str + " 입니다.");
//        updatePassword(str, userEmail);
//        return dto;
//    }

    public void updatePassword(String str, String userEmail) {
        String pw = encryptMD5(str);
        String id = null;
        try {
            id = memberMapper.idcheckMember(userEmail).getMemberId();
        } catch (Exception e) {
            e.printStackTrace();
        }
        int result =memberMapper.updateUserPassword(id, pw);
    }


    public String getTempPassword() {
        char[] charSet = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
                'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};

        String str = "";

        int idx = 0;
        for (int i = 0; i < 10; i++) {
            idx = (int) (charSet.length * Math.random());
            str += charSet[idx];
        }
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



}
