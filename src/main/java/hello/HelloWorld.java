package hello;


import org.apache.commons.lang3.StringUtils;

import java.util.Scanner;

public class HelloWorld {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        String trimmed = StringUtils.trim("   hejsan    ");

        System.out.print("Write your name: ");
        var name = sc.nextLine();

        System.out.println(trimmed + name);

    }
}
