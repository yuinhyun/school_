package com.movie.web.grade;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * CRUD 
 *  C : Create 생성
 *  R : Read   조회
 *  U : Update 수정
 *  D : Delete 삭제
 *@package : grade
 *@file : GradeService.java
 *@author inhyeon
 *@date 2016. 3. 14.
 *@story 속성은 감추고 기능은 오픈한다.
 */
public interface GradeService {
	// 성적표 등록  C
	public void input(GradeBean gradeBean); //기능은 추상화하고 속성은 추상화하지 않는다.
	// 성적표 리스트 출력 R
	public List<GradeMemberBean> getList();
	// 성적표 조회(학번) R
	public  GradeMemberBean getGradeByHak(int hak);
	// 성적표 조회(이름) R
	public List<GradeMemberBean> getGradesByName(String name);
	// 성적표 수정 U
	public String update(GradeBean grade);
	// 성적표 삭제 D
	public String delete(int hak);
	// R 카운트 조회
	public int getCount();
	// R 이름조회시 카운트 조회
	public void getCountByName();
	
	
}