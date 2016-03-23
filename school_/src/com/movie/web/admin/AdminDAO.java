package com.movie.web.admin;

import java.util.ArrayList;

import com.movie.web.grade.GradeBean;
import com.movie.web.grade.GradeMemberBean;

public interface AdminDAO {
			// C 성적표 등록 
			public void insert(GradeBean grade); // 추상 메소드
			// R 성적표 리스트 출력
			public ArrayList<GradeBean> selectAll();
			// R 성적표 조회(학번)
			public GradeMemberBean selectGradeByHak(int hak);
			// R 성적표 조회(이름)
			public ArrayList<GradeMemberBean> selecctGradesByName(String name);
			// R 카운트 조회
			public int count();
			// U 성적표 수정
			public String update(GradeBean grade);
			// D 성적표 삭제
			public String delete(int hak);
			
			// R 성적표 조회(아이디)
			public GradeBean getGradeById(String id);
}
