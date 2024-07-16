package com.itwill.rest.service;

import org.springframework.stereotype.Service;

import com.itwill.rest.repository.PurchaseDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class PurchaseService {
	
	private final PurchaseDao dao;
	
	public int PurchaseSuccess (int userId) {
		log.debug("service ({})",userId);
		int result = dao.PurchaseSuccess(userId);
		
		return result;
	}

	public boolean isPurchaseUser (Integer id) {
		log.debug("isPurchaseUser()");
		int result = dao.isPurchaseUser(id);
		if (result >= 1) {
			return true; // 결제한 유저
		} else {
			return false; // 결제유저 아님.
		}
	}

}
