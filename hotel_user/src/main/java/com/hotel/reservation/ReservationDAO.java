package com.hotel.reservation;

import java.util.List;

public interface ReservationDAO {

	int insertReservation(ReservationDTO rev);
	
	List<ReservationDTO> selectReservationInfo(String userid);

	int selectIDX();

	ReservationDTO selectOneReservation(int maxIDX);

	int updateCancel(ReservationDTO dto);
}
