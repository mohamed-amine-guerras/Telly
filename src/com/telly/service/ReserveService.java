package com.telly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;

import com.telly.dao.Reserve;
import com.telly.dao.ReserveDao;

@Service("reserveService")
public class ReserveService {
	
	@Autowired
	private ReserveDao reserveDao;
	
	public void reserve(Reserve reserve){
		reserveDao.reserve(reserve);
	}
	
	public List<Reserve> getReserves(String username){
		return reserveDao.getReserve(username);
	}

}
