package com.kochemaskin.springbootquiz.repository;

import com.kochemaskin.springbootquiz.model.Topic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TopicRepository extends JpaRepository<Topic, Integer> {
}