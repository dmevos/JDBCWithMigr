package ru.osipov.jdbcmigr.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@AllArgsConstructor
@NoArgsConstructor
@Data
@NamedQueries(value = {@NamedQuery(
        name = "qwerty",
        query = "select o.productName from Customers c left join Orders o on c.id = o.customerId where c.name like :name"
)})
@Entity
@Table(name = "customers", schema = "jdbclesswithmigration")
public class Customers implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @Column(length = 30)
    String name;
    @Column(length = 50)
    String surname;
    @Column
    int age;
    @Column(name = "phone_number", length = 11)
    String phoneNumber;
}