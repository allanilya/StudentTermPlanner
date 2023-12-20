package StudentTermPlanner;

import java.sql.Date;
import java.util.InputMismatchException;
import java.util.Scanner;

public class PlannerMenu {

    PlannerServer server = new PlannerServer();
    Scanner scnr = new Scanner(System.in);

    public void start() {
        System.out.println("Hello User!\nPlease enter your password to login.");
        String pswrd = scnr.nextLine();
        while (!pswrd.equals(server.secret())) {
            System.out.println("Incorrect password. Please try again.");
            pswrd = scnr.nextLine();
        }
        menuOptions();

    }

    public void menuOptions() {
        int choice;
        try {
            System.out.println("Main Menu\nHere are the following options:");
            System.out.println("1. View upcoming events within all courses.");
            System.out.println("2. View course information.");
            choice = scnr.nextInt();
            if (choice == 1) {
                Date givenDate;
                boolean validDate = false;
                while (!validDate) {
                    try {
                        System.out.println("Please enter the date in the YYYY-MM-DD format.");
                        givenDate = Date.valueOf(scnr.next());
                        System.out.println(server.getAllEvents(givenDate));
                        validDate = true;
                    } catch (Exception e) {
                        System.out.println("Invalid date format.");
                    }
                }
            } else if (choice == 2) {
                chooseCourse();
            } else {
                System.out.println("Invalid choice. Please enter a valid number.");
            }
        } catch (Exception e) {
            System.out.println("Incorrect value. Please insert a number.");
        }
    }

    public void chooseCourse() {
        int choice2;
        boolean validChoice = false;
        while (!validChoice) {
            try {
                System.out.println("Here are your following classes: ");
                System.out.println("1. " + server.courseName(1));
                System.out.println("2. " + server.courseName(2));
                System.out.println("3. " + server.courseName(3));
                System.out.println("4. " + server.courseName(4));
                System.out.println("5. " + server.courseName(5));
                System.out.println("Please select the class you wish to view: ");
                choice2 = scnr.nextInt();
                scnr.nextLine();
                if (choice2 > 5 || choice2 < 0) {
                    System.out.print("Invalid input. Please insert a number.");
                    return;
                }
                String courseInfo = server.courseInfo(choice2);
                System.out.println(courseInfo);
                System.out.println("To view all events for " + server.courseName(choice2) + ", insert any key and press enter.");
                String input = scnr.next();
                System.out.println(server.courseEvents(choice2));
                validChoice = true;
            } catch (InputMismatchException e) {
                System.out.println("Incorrect value. Please insert a number.");
                scnr.nextLine();
            }
        }
    }
}
