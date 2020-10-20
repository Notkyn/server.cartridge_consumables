package ua.notky.cartridge.consumables.repository.department;

import ua.notky.cartridge.consumables.model.Department;

import java.util.List;

public interface DepartmentRepository {
    Department save(Department department);
    Department get(int id);
    boolean delete(int id);
    List<Department> getAll();
}