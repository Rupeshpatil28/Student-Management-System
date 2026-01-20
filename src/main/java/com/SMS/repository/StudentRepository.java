package com.SMS.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.SMS.entity.Student;


public interface StudentRepository extends JpaRepository<Student,Long> {
	
}
