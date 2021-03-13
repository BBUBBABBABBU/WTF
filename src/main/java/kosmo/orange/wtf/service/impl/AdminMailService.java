package kosmo.orange.wtf.service.impl;

import kosmo.orange.wtf.model.mapper.AdminMapper;
import kosmo.orange.wtf.model.vo.AdminMailVO;
import kosmo.orange.wtf.model.vo.AdminVO;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service("adminMailService")
@AllArgsConstructor
public class AdminMailService {

    // ************************************
    //  멜발 관련 service
    // ************************************

    @Autowired
    AdminMapper adminMapper;

    @Autowired
    PasswordEncoder passwordEncoder;

    private JavaMailSender mailSender;
    private static final String FROM_ADDRESS = "eggbnb.ed@gmail.com";


    /************
     * id / name 확인
     */
    public int checkAccount(String id, String name) {
        System.out.println("AdminServiceImpl.checkAccount");
        System.out.println("AdminServiceImpl.checkAccount 38line : id = [" + id + "], name = [" + name + "]");

        AdminVO admin = new AdminVO();
        admin.setMgr_id(id);
        admin.setMgr_name(name);

        System.out.println("AdminServiceImpl.checkAccount 44line : " + admin.getMgr_id());

        AdminVO adminVO = adminMapper.checkAccount(admin);
        System.out.println("adminVO = " + adminVO);

        int result = 1;

        if(adminVO == null) {
            result = 0;
        }

        System.out.println("result = " + result);

        return result;

    } // end of checkAccount


    /*****************
     * 임시 pw 생성
     */
    public String pwMake() {
        System.out.println("AdminMailService.pwMake");

        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        uuid = uuid.substring(0, 10);

        System.out.println("uuid = " + uuid);

        return uuid;

    } // end of pwMake


    /**************
     * 메일 세팅하고
     */
    public AdminMailVO mailSetting(String id, String name, String uuid) {
        System.out.println("AdminMailService.mailSetting");

        AdminMailVO mailVO = new AdminMailVO();
        mailVO.setAddress(id);
        mailVO.setTitle(name + "님의 임시 pw");
        mailVO.setMessage("임시 pw :" + uuid);

        System.out.println("mailVO = " + mailVO);

        return mailVO;

    } // end of mailSetting


    /*****************
     * 만들어진 임시 비번 DB에 업뎃
     */
    public int updatePw(String pw, String id) {
        System.out.println("AdminServiceImpl.updatePw");
        System.out.println("pw = [" + pw + "], id = [" + id + "]");

        AdminVO adminVO = new AdminVO();

        adminVO.setMgr_id(id);
        adminVO.setMgr_pass(passwordEncoder.encode(pw));
        System.out.println("adminVO = " + adminVO);

        int result = adminMapper.updatePw(adminVO);
        System.out.println("result = " + result);

        return result;

    } // end of updatePw


    /******************
     * 멜발!
     */
    public String mailSend(AdminMailVO mailVO) {
        System.out.println("AdminMailService.mailSend");

        SimpleMailMessage message = new SimpleMailMessage();

        message.setTo(mailVO.getAddress());
        message.setFrom(AdminMailService.FROM_ADDRESS);
        message.setSubject(mailVO.getTitle());
        message.setText(mailVO.getMessage());

        mailSender.send(message);
        System.out.println("message = " + message);

        String mail = "멜발완료";

        return mail;

    } // end of mailSend

}
