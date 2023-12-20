package StudentTermPlanner;

import java.sql.*;

public class PlannerServer {
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver"; // replace the values below with your exact credentials
    static final String userName = "root";
    static final String password = "Gorillaglue2";
    static final String url = "jdbc:mysql://localhost:3306/studentplanner";

    public String secret() {
        //edit user password below
        return "password";
    }

    public String courseName(int courseId) {
        String courseName = null;
        String query = "Select name From course Where id = ?";

        try (Connection conn = DriverManager.getConnection(url, userName, password);
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setInt(1, courseId);

            try (ResultSet resultSet = ps.executeQuery()) {
                if (resultSet.next()) {
                    courseName = resultSet.getString("name");
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return courseName;
    }

    public String courseInfo(int courseId) {
        StringBuilder courseDetail = new StringBuilder();

        try (Connection conn = DriverManager.getConnection(url, userName, password)) {
            String query = "Select name, instructor, schedule From course Where id = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, courseId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String courseName = rs.getString("name");
                String instructor = rs.getString("instructor");
                String schedule = rs.getString("schedule");

                courseDetail.append("Course Name: ").append(courseName).append("\n");
                courseDetail.append("Instructor: ").append(instructor).append("\n");
                courseDetail.append("Schedule: ").append(schedule).append("\n");
            } else {
                courseDetail.append("No course found with the given course id.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return courseDetail.toString();
    }

    public String courseEvents(int courseId) {
        StringBuilder events = new StringBuilder();

        try (Connection conn = DriverManager.getConnection(url, userName, password)) {
            String query = "Select name, duedate, description, category From event Where courseid = ? "
                    + "Order BY category ASC, duedate DESC, id DESC";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, courseId);
            ResultSet rs = ps.executeQuery();

            String currentCategory = null;
            while (rs.next()) {
                String category = rs.getString("category");
                category = category.toUpperCase();
                String name = rs.getString("name");
                Date duedate = rs.getDate("duedate");
                String stringduedate = (duedate != null) ? duedate.toString() : "";
                String description = rs.getString("description");
                if (!category.equals(currentCategory)) {
                    currentCategory = category;
                    events.append("\nCATEGORY: ").append(category).append("\n");
                }
                if (category.equalsIgnoreCase("EXAM") || category.equalsIgnoreCase("QUIZ") && duedate != null) {
                    events.append(name).append(" on ").append(stringduedate).append("\n");
                    events.append(description).append("\n\n");
                } else if (duedate == null) {
                    events.append(name).append("\n");
                    events.append(description).append("\n\n");
                } else {
                    events.append(name).append("  Due: ").append(stringduedate).append("\n");
                    events.append(description).append("\n\n");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return events.toString();
    }

    public String getAllEvents(Date givenDate) {
        StringBuilder events = new StringBuilder();

        try (Connection conn = DriverManager.getConnection(url, userName, password)) {
            String query = "Select course.name As courseName, event.name As eventName, category, duedate, description "
                    + "From event " + "Join course on event.courseid = course.id " + "Where duedate >= ?"
                    + "Order By duedate DESC";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setDate(1, givenDate);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Date dueDate = rs.getDate("duedate");
                if (dueDate == null) {
                    continue;
                }
                String course = rs.getString("courseName");
                String category = rs.getString("category");
                String eventName = rs.getString("eventName");
                String description = rs.getString("description");

                if (category.equals("Exam") || category.equals("Quiz")) {
                    events.append(course).append("\n");
                    events.append(eventName).append(" on ").append(dueDate).append("\n");
                    events.append(description).append("\n\n");
                } else {
                    events.append(course).append("\n");
                    events.append(eventName).append("  Due: ").append(dueDate).append("\n");
                    events.append(description).append("\n\n");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return events.toString();
    }
}
