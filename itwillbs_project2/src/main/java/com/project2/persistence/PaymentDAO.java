package com.project2.persistence;

import java.util.List;

import com.project2.domain.Criteria;
import com.project2.domain.PaymentVO;
import com.project2.domain.UserVO;

public interface PaymentDAO {
	
	public PaymentVO boardPaymentList(Criteria vo) throws Exception;
	
	public List<PaymentVO> paymentList(Criteria vo) throws Exception;
	
	public List<PaymentVO> hostList(Criteria vo) throws Exception;
	
	
	public PaymentVO selectPayInfo(Integer order_num) throws Exception;
	
	public int updatePayCancel(PaymentVO vo) throws Exception;
	
	public List<PaymentVO> adminOrderBoard(Criteria cri) throws Exception;
	
	public int paymentListCount(String user_id) throws Exception;
	
	public int adminOrderListCount() throws Exception;
	
	public int hostOrderListCount(Criteria cri) throws Exception;
	
	public UserVO pwCheck (UserVO vo) throws Exception;

}
