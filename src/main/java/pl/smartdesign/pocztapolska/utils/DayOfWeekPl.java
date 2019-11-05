package pl.smartdesign.pocztapolska.utils;

public enum DayOfWeekPl {
    PONIEDZIALEK(1, "Poniedziałek"),
    WTOREK(2, "Wtorek"),
    SRODA(3, "Środa"),
    CZWARTEK(4, "Czwartek"),
    PIATEK(5, "Piątek"),
    SOBOTA(6, "Sobota"),
    NIEDZIELA(7, "Niedziela");

    private final int number;
    private final String descPl;

    DayOfWeekPl(int number, String descPl) {
        this.number = number;
        this.descPl = descPl;
    }

    public int getNumber() {
        return number;
    }

    public String getDescPl() {
        return descPl;
    }
}
