package ru.osipov.jdbcmigr.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class ExecScript {
    @PersistenceContext
    EntityManager entityManager;

    @Transactional
    public List<String> getProductName(String name) {

        var s = entityManager.createNamedQuery("qwerty").setParameter("name", name).getResultList();
        List<String> res = new ArrayList<>();
        for (Object d : s) {
            res.add(d.toString());
        }
        return res;
    }
}