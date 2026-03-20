import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

public class FileAppender {
    private final String fileName;

    /**
     * Constructor that initializes the target file path.
     * @param fileName The path/name of the file to write to.
     */
    public FileAppender(String fileName) {
        this.fileName = fileName;
    }

    /**
     * Appends a string to the file. 
     * If the file does not exist, it will be created.
     * @param content The string to append.
     * @throws IOException If an I/O error occurs.
     */
    public void appendToFile(String content) throws IOException {
        Files.write(
                Paths.get(this.fileName),
                (content + System.lineSeparator()).getBytes(),
                StandardOpenOption.CREATE,
                StandardOpenOption.APPEND
        );
    }
}