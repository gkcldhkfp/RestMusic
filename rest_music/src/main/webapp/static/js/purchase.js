/**
 *  purchase.jsp 포함
 */
document.addEventListener('DOMContentLoaded', () => {

    const btn = document.querySelector('button#purchase');  
    btn.addEventListener('click', request);
    
  IMP.init('imp62307542'); // 'imp12345678' 대신 실제 가맹점 식별코드를 입력하세요.

    function request() {
            IMP.request_pay({
                pg : "html5_inicis.INIBillTst", // 실제 계약 후에는 실제 상점아이디로 변경
                pay_method : 'card', // 'card'만 지원됩니다.
                merchant_uid: "order_monthly_0001", // 상점에서 관리하는 주문 번호
                name : '최초인증결제',
                amount : 0, // 결제창에 표시될 금액. 실제 승인이 이루어지지는 않습니다. (모바일에서는 가격이 표시되지 않음)
                customer_uid : 'your-customer-unique-id', // 필수 입력.
                buyer_email : 'iamport@siot.do',
                buyer_name : '아임포트',
                buyer_tel : '02-1234-1234',
                m_redirect_url : 'https://www.my-service.com/payments/complete/mobile' // 모바일에서 결제 완료 후 리디렉션 될 URL
            }, function(rsp) {
                if ( rsp.success ) {
                    alert('빌링키 발급 성공');
                    // 여기에서 rsp.customer_uid를 서버에 저장하거나 후속 처리합니다.
                } else {
                    alert('빌링키 발급 실패');
                    // 실패 처리 로직을 여기에 작성합니다.
                }
            }
            )};
        
});