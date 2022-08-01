public class Lasagna {
    public int expectedMinutesInOven() {
        return 40;
    }

    public int remainingMinutesInOven(int timeInOven) {
        return expectedMinutesInOven() - timeInOven;
    }

    public int preparationTimeInMinutes(int layers) {
        int MINUTES_PER_LAYER = 2;
        return MINUTES_PER_LAYER * layers;
    }

    public int totalTimeInMinutes(int layers, int timeSpentInOven) {
        return preparationTimeInMinutes(layers) + timeSpentInOven;
    }
}
