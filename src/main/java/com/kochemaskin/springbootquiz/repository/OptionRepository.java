package com.kochemaskin.springbootquiz.repository;

import com.kochemaskin.springbootquiz.model.Option;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OptionRepository extends JpaRepository<Option, Integer> {
}