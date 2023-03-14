package ru.osipov.jdbcmigr.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class Orders {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @Column
    Date date;
    @Column(name = "product_name", length = 50)
    String productName;
    @Column
    double amount;
    @Column (name = "customer_id")
    Long customerId;
    @ManyToOne(optional = false)
    Customers customers;
}