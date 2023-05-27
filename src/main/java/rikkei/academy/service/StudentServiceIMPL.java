package rikkei.academy.service;

import rikkei.academy.model.Student;

import java.util.ArrayList;
import java.util.List;

public class StudentServiceIMPL implements IStudentService{
    public static List<Student> studentList = new ArrayList<>();
    static {
        studentList.add(new Student(1L, "Thu", "thu@gmail.com", "Yen Bai"));
        studentList.add(new Student(2L, "Ha", "ha@gmail.com", "Phu Tho"));
        studentList.add(new Student(3L, "Chuan", "chuan@gmail.com", "Nam Dinh"));
    }
    @Override
    public List<Student> findAll() {
        return studentList;
    }

    @Override
    public Student findById(Long id) {
        for (int i = 0; i < studentList.size(); i++) {
            if (studentList.get(i).getId()==id) {
                return studentList.get(i);
            }
        }
        return null;
    }

    @Override
    public void save(Student student) {
        Student student1 = findById(student.getId());
        if (student1 == null) {
            studentList.add(student);
        }else {
            studentList.set(findAll().indexOf(student1),student);
        }
    }

    @Override
    public void deleteById(long id) {
        for (int i = 0; i < studentList.size(); i++) {
            if (studentList.get(i).getId()==id) {
                studentList.remove(i);
            }
        }
    }
}
