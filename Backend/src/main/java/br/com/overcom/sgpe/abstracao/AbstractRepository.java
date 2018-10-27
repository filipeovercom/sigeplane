package br.com.overcom.sgpe.abstracao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;


public interface AbstractRepository<T extends AbstractEntity> extends QuerydslPredicateExecutor<T>, JpaRepository<T, Long> {
}
