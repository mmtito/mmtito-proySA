package edu.yavirac.distributivobackend.util;

public class DateSchedule {
    static int days [] = { 31, 28, 31, 30, 31, 30,
        31, 31, 30, 31, 30, 31 };

// Function to return the day number
// of the year for the given date
public static Integer dayOfYear(String date)
{
// Extract the year, month and the
// day from the date string
int year = Integer.parseInt(date.substring(0, 4));

int month = Integer.parseInt(date.substring(5, 7));

int day = Integer.parseInt(date.substring(8));

// If current year is a leap year and the date
// given is after the 28th of February then
// it must include the 29th February
if (month > 2 && year % 4 == 0 &&
(year % 100 != 0 || year % 400 == 0))
{
++day;
}

// Add the days in the previous months
while (--month > 0)
{
day = day + days[month - 1];
}
return day;
}

// Driver code

}
