const int GIGA_SECOND = 1000000000;

DateTime add(final DateTime birthDate) =>
    birthDate.add(Duration(seconds: GIGA_SECOND));
