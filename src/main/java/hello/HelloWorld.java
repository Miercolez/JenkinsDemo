package hello;

import java.util.Scanner;

public class HelloWorld {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.println("Write your name: ");
        var name = sc.nextLine();
        System.out.println("Hello " + name);

    }
}
