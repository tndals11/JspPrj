    package com.gropshop.member.service;

    import net.nurigo.java_sdk.Coolsms;
    import net.nurigo.java_sdk.api.Message;
    import net.nurigo.java_sdk.exceptions.CoolsmsException;
    import org.json.simple.JSONObject;
    import org.springframework.stereotype.Service;

    import java.util.HashMap;

    @Service
    public class CoolsmsService {

        public void certifiedPhoneNumber(String phoneNumber, String numStr) {
            String api_key = "NCSNXNY16V2CXIAQ";
            String api_secret = "4KEZFSVXPBYVVXYNFGUIE6MR8B5AXBUI";
            Message coolsms = new Message(api_key, api_secret);


            HashMap<String, String> params = new HashMap<>();
            params.put("to", phoneNumber );    // 수신전화번호
            params.put("from", "01031153952");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
            params.put("type", "SMS");
            params.put("text", "고프샵 휴대폰인증 테스트 메시지 : 인증번호는" + "[" + numStr + "]" + "입니다.");
            params.put("app_version", "test app 1.2"); // application name and version

            try {
                JSONObject obj = (JSONObject) coolsms.send(params);
                System.out.println("error");
                System.out.println(obj.toString());
            } catch (CoolsmsException e) {
                System.out.println("error");
                System.out.println(e.getMessage());
                System.out.println(e.getCode());
            }

        }
    }