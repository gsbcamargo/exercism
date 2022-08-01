public class LogLevels {
    
    public static String message(String logLine) {
        String[] splittedMessage = logLine.split(":");
        return splittedMessage[1].trim();
    }

    public static String logLevel(String logLine) {
        int indexOfLastBracket = logLine.indexOf("]");
        return logLine.toLowerCase().substring(1, indexOfLastBracket);
    }

    public static String reformat(String logLine) {
        return message(logLine) + " (" + logLevel(logLine) + ")";
    }
}
