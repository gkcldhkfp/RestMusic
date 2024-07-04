/**
 *  purchase.jsp 포함
 */
document.addEventListener('DOMContentLoaded', () => {

    const btnPurchase = document.querySelector('button#purchase');  
    btnPurchase.addEventListener('click', requestPay);
    
    const IMP = window.IMP; 
    IMP.init('imp62307542'); // 'imp12345678' 대신 실제 가맹점 식별코드를 입력하세요.
    
    const merchant_uid = 'ORD20180131-0000011';
    
    
    
    function requestPay() {
        
        const data = {"merchant_uid": merchant_uid,
                                 "amount": 10}
                  axios
                .post('https://api.iamport.kr/payments/prepare', data)
                .then((response) => {
                    console.log(response.data);
                })
                .catch((error) => {
                    console.log(error);
                });
                
                
        IMP.request_pay({
          pg: "html5_inicis.INIpayTest",
          pay_method: "card",
          merchant_uid: merchant_uid,   // 주문번호
          name: "상품명",
          amount: 1,                         // 숫자 타입
          buyer_email: "gildong@gmail.com",
          buyer_name: "홍길동",
          buyer_tel: "010-4242-4242",
        }, function (rsp) { // callback
           console.log(rsp.imp_uid);
           if (rsp.success) {   
                  // axios로 HTTP 요청
                  
           }      
        });
    }
        
});